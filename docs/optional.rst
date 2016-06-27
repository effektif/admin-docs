Optional configuration
======================

This section provides instructions for optional configuration, which is not required for all installations.

.. _synchronise-users:

User and group synchronisation with Active Directory
----------------------------------------------------

The enterprise version of Signavio Workflow offers user and group synchronisation with an Active Directory Server using the LDAP V3 protocol.

Before you can configure the synchronisation, check that you have the following pre-requisites.

* Signavio Workflow is installed.
* The first Signavio Workflow user is registered, see :ref:`create-initial-user`\ .
* A domain account for querying the Active Directory - its username and password.

Configuring the synchronisation consists of the following steps.

#. Create an Active Directory group which contains all Signavio Workflow users as members.
#. Create an Active Directory group which contains all Signavio Workflow administrators as members.
#. (Optional) Create an Active Directory group which contains all groups as members.
#. Login to Signavio Workflow with your initial user.
#. Open the *Organization settings* and go to the tab *LDAP*.
#. Create a new Active Directory configuration.
#. Validate your configuration.
#. Synchronise the users and groups.


Creating the Active Directory groups
````````````````````````````````````

Active Directory users and groups which should be synchronised with Signavio Workflow are managed within the Active Directory by adding them to specific Active Directory groups. 
There are two groups for users, one which contains all Signavio Workflow users and one which contains only administrators.
All members of the adminstrator group need to be members of the user group as well.
Nested groups are not supported.
All users and administrators need to be direct members of their groups.
The synchronisation will copy the attributes ``givenName``, ``sn``, ``mail``, ``dn``, ``objectGUID``, ``sAMAccountName`` and ``userPrincipalName``\ to the user in Signavio Workflow.
It is required that every user has the ``mail`` attribute defined.

Optionally, a third specific group, which contains all Active Directory groups that should be synchronised, can be defined.
All members of this group should be Active Directory groups as well. 
Again nested groups are not supported.
Users must be direct members of the synchronised groups.
The synchronisation will copy the attributes ``cn``, ``dn`` and ``objectGUID`` to the group in Signavio Workflow.
Every member of a group which is not a Signavio Workflow user will be ignored.


Creating a new configuration
````````````````````````````

In the LDAP configuration tab, click on *Create* to start the configuration.
Then fill in the configuration details into the configuration form. 

* *URL* - the location of your Active Directory server, e.g. ``ldap://adtest.local:389``\
* *username* and *password* - the login credentials of the domain account
* *User group DN* - the distinguished name (DN) of the Active Directory group which contains all users
* *Admin group DN* - the DN of the Active Directory group which contains all administrators
* *Group group DN* - (optional) the DN of the Active Directory group which contains all groups
* *License* - the license that will be assigned to every synchronised user

The last field of the configuration form will show you if the configuration was already validated.


Validating a configuration
``````````````````````````

Before a synchronisation can be started, the configuration has to be validated.
The validation checks the following parameters:

* Signavio Workflow can connect to the Active Directory.
* The configured groups are proper Active Directory groups.
* There is at least one user.
* There is at least one administrator.
* The users have the ``mail`` attribute defined.
* There are sufficient licenses.
* (Optional) There are groups defined.

Start the validation by clicking on *Validate*.
If the configuration is valid, the *Synchronise* button is enabled.
If the configuration is not valid, a list with more detailed information will be shown.
In that case fix any listed issue and run the configuration again.

Every time the configuration is changed, the validation must be executed again.

Note the validation might take several seconds depending on the number of users you want to synchronise and the perfomance of the Active Directory.


Synchronising users and groups
``````````````````````````````

If the configuration is valid, you can synchronise the users and groups.
Start the synchronisation by clicking on *Synchronise*.
If the synchronisation was successful, you will see a report of the added / updated users and groups.
If the synchronisation failed, a list with more detailed information will be shown.

Note the validation might take several seconds up to minutes depending on the number of users you want to synchronise and the perfomance of the Active Directory.


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
#. Configure Tomcat to be executed with a domain account.
#. Restart Tomcat.


Install the SPNEGO library
``````````````````````````

The SPNEGO library makes it possible to authenticate users by connecting to an Active Directory server.

To install, copy two files to ``$TOMCAT_HOME/lib/``:

::

	$WORKFLOW_HOME/optional/spnego/spnego.jar
	$WORKFLOW_HOME/optional/spnego/signavio-cfc.jar


.. _configure-sso-filter:

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

The `SPN <https://msdn.microsoft.com/en-us/library/ms677949(v=vs.85).aspx>`_ is the identifier used by Kerberos authentication to associate a service instance with a service logon account.
You will have to associate the domain account for Signavio Workflow with the fully qualified domain name (FQDN) of the service.
Therefore, you should register a SPN for every possible alias of the service which includes the computer name of the server with and without domain name, as well as any other DNS entries which point to this server.
In order to define a SPN, use ``setspn.exe`` which are part of the `Windows Support Tools <https://en.wikipedia.org/wiki/Windows_Support_Tools>`_\ .

::

	setspn.exe -A HTTP/computer-name.domain-name domain-user-account

For example, our domain is called ``ADTEST.LOCAL``, the computer name of the server is ``VM-42``, Signavio Workflow will be available under the domain ``http://workflow.intranet:8080`` and the domain user account is ``tomcat@adtest.local``\ .
Then we would have to register the following SPNs:

::

	setspn.exe -A HTTP/vm-42 tomcat
	setspn.exe -A HTTP/vm-42.adtest.local tomcat
	setspn.exe -A HTTP/workflow.intranet tomcat

For more information see the `Microsoft documentation <https://msdn.microsoft.com/en-us/library/cc281382.aspx>`_\ .


You can list all registered SPNs which are associated to a domain account with the following command:

::

	setspn.exe -L domain-user-account


Configuring the Tomcat user
```````````````````````````

By default the Tomcat application server is executed with a local system account.
The SSO setup requires the Tomcat to be executed with a domain account.
You should use the same domain account which you already configured in :ref:`configure-sso-filter`\ .

#. Open the Windows services dialogue ``services.msc``
#. Select your Apache Tomcat service and open the properties
#. Select the *Log On* tab
#. Choose the option *This account* and fill in the domain account credentials


Troubleshooting
```````````````

First follow the steps in the `SPNEGO Pre-flight checklist <http://spnego.sourceforge.net/pre_flight.html>`_.
Run the ``HelloKDC`` connection test in the ``$TOMCAT_HOME/`` directory to use the ``krb5.conf`` and ``login.conf`` you configured above.

Note that in the `Pre-flight checklist`, the `Do we know the address of the KDC?` section recommends using the KDC host name instead of the IP address.


If you have completed the setup described here and the SSO is still not working, please make sure you are accessing the web application from a different machine than the one that runs the Tomcat.
Furthermore, check if the `Integrated Windows Authentication <https://en.wikipedia.org/wiki/Integrated_Windows_Authentication>`_ is activated and the Signavio Workflow system is a trusted service, for instance by adding the address to the local intranet.

