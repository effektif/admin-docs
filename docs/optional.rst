Optional configuration
======================

This section provides instructions for optional configuration, which is not required for all installations.

Single Sign-On using Windows and Kerberos/SPNEGO
------------------------------------------------

Use this configuration to enable Single Sign-On (SSO) in a Windows environment that supports user authentication using `Kerberos <https://en.wikipedia.org/wiki/Kerberos_%28protocol%29>`_ and `SPNEGO <https://en.wikipedia.org/wiki/SPNEGO>`_.

Before you start, check that you have the following pre-requisites.

* Windows domain users added to Signavio Workflow, e.g. using LDAP synchronisation.
* A Windows domain for authenticating users.
* A domain account for running Signavio Workflow - its username and password.
* Signavio Workflow is installed on a Windows Server that is on the domain.

Configuring SSO in Apache Tomcat consists of the following steps.

#. Install the SPNEGO library’s JAR file.
#. Configure the SPNEGO SSO Servlet filter.
#. Add the ``krb5.conf`` and ``login.conf`` configuration files to ``$TOMCAT_HOME/``.
#. Register Tomcat’s Service Principal Name (SPN)


Install the SPNEGO library
``````````````````````````

The SPNEGO library makes it possible to authenticate users by connecting to an Active Directory server.

To install, copy two files to ``$TOMCAT_HOME/lib/``:

::

	optional/spnego/spnego.jar
	optional/spnego/signavio-cfc.jar


Configuring the SPNEGO SSO Servlet filter
`````````````````````````````````````````

The SSO Servlet filter uses Windows authentication to automatically log in when a user accesses Signavio Workflow.

To configure, edit ``$TOMCAT_HOME/conf/web.xml`` and add the following lines immediately before the final line (``</web-app>``), from ``optional/spnego/filter-configuration.xml``.

::

	<filter>
		<filter-name>cfc</filter-name>
		<filter-class>ConditionalFilterChain</filter-class>
	</filter>
	<filter-mapping>
		<filter-name>cfc</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>

	<filter>
		<filter-name>SpnegoHttpFilter</filter-name>
		<filter-class>net.sourceforge.spnego.SpnegoHttpFilter</filter-class>
		<init-param>
			<param-name>spnego.allow.basic</param-name>
			<param-value>false</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.allow.localhost</param-name>
			<param-value>false</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.allow.unsecure.basic</param-name>
			<param-value>false</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.login.client.module</param-name>
			<param-value>spnego-client</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.krb5.conf</param-name>
			<param-value>krb5.conf</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.login.conf</param-name>
			<param-value>login.conf</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.login.server.module</param-name>
			<param-value>spnego-server</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.prompt.ntlm</param-name>
			<param-value>false</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.logger.level</param-name>
			<param-value>1</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.preauth.username</param-name>
			<param-value>???</param-value>
		</init-param>
		<init-param>
			<param-name>spnego.preauth.password</param-name>
			<param-value>???</param-value>
		</init-param>
	</filter>
	<filter-mapping>
		<filter-name>SpnegoHttpFilter</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>

Near the bottom, replace two occurrences of ``???`` with the domain account’s username and password, respectively.


Adding SPNEGO configuration files
`````````````````````````````````

Copy ``krb5.conf`` to ``$TOMCAT_HOME/``, and edit the file:

* replace four occurrences of ``ADTEST`` with the Windows domain name
* replace ``123.45.6.7`` with the host name or IP address of the Active Directory server.

::

	[libdefaults]
		default_tkt_enctypes = aes128-cts rc4-hmac des3-cbc-sha1 des-cbc-md5 des-cbc-crc
		default_tgs_enctypes = aes128-cts rc4-hmac des3-cbc-sha1 des-cbc-md5 des-cbc-crc
		permitted_enctypes   = aes128-cts rc4-hmac des3-cbc-sha1 des-cbc-md5 des-cbc-crc

	[realms]
		ADTEST.LOCAL  = {
			kdc = 123.45.6.7
			default_domain = ADTEST.LOCAL 
	}

	[domain_realm]
		.ADTEST.LOCAL = ADTEST.LOCAL 



Copy ``login.conf`` to ``$TOMCAT_HOME/``.

::

	spnego-client {
		com.sun.security.auth.module.Krb5LoginModule required;
	};

	spnego-server {
		com.sun.security.auth.module.Krb5LoginModule required
		storeKey=true
		isInitiator=false;
	};


Registering Tomcat’s Service Principal Name (SPN)
`````````````````````````````````````````````````

TODO


Troubleshooting
```````````````

First follow the steps in the `SPNEGO Pre-flight checklist <http://spnego.sourceforge.net/pre_flight.html>`_.
Run the ``HelloKDC`` connection test in the ``$TOMCAT_HOME/`` directory to use the ``krb5.conf`` and ``login.conf`` you configured above.

Note that in the `Pre-flight checklist`, the `Do we know the address of the KDC?` section recommends using the KDC host name instead of the IP address.

