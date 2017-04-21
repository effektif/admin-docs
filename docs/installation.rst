Installing Signavio Workflow Accelerator
========================================
This section will guide you through the setup of Workflow Accelerator. 
Simply follow the subsections step by step. 
If you have already installed Workflow Accelerator and want to update the system to a newer version, you can skip this chapter.

System requirements
-------------------

Operating system
````````````````
The Workflow Accelerator system can be deployed on different operating systems. 
Officially supported are the following operating systems:

* Debian Stable Release 64-bit
* Microsoft Windows Server 64-bit

.. important:: In general, it is possible to install Workflow Accelerator on other Linux distributions. However, the installation process can differ from the following instructions and the Signavio team cannot offer official support in case of an installation problem.

You are advised to use a 64-bit operating system in order to be able to assign more than 1.5GB of heap space to the Java VM. 
Furthermore, MongoDB is limited to 2GB of content on 32-bit operating systems.

Hardware requirements
`````````````````````
The described installation in this adminstration guide will setup the database and the application server on the same system. 
However, it is also possible to setup the database and application server on separate systems. 
For instance, if you already have an infrastructure that provides MongoDB instances for different applications, you can simply reuse your infrastructure and just create another database for Workflow Accelerator.

The minimal hardware requirements for the combined system of application and database server are:

* 8 GB RAM
* 4 core CPU
* 50 GB disk space

The required disk space depends on how you will use Workflow Accelerator. 
50 GB should be sufficient disk space for most scenarios. 
However, if you plan on using a lot of file uploads in your processes the required disk space depends largely on the number and size of the uploaded files.

Note that the required disk space does not include the space necessary for backups. 
If you plan on storing the backups on the same server, you should add more.

Other systems
`````````````
The Workflow Accelerator system relies on a SMTP mail server to send notifications and invite users. 
You can simply reuse any existing mail server in your organization that supports access via SMTP. 

Software requirements
`````````````````````
In order to run Workflow Accelerator on your server, you will need to install some additional software. 
Depending on your deployment strategy (combined or separate system for application and database), you have to install the following required software either on the same server or the respective separate servers. 

The following sections contain detailed instructions on how to install and configure the additional software components.

The application server requires the following additional software:

* Java: Oracle JSE version 8 (1.8.0_66+)
* Apache Tomcat 8 64-bit (recommended) or Apache Tomcat 7 64-bit

The database server requires the following additional software:

* MongoDB version 3.4.x or higher

The optional script engine requires the following additional software:

* Node.js 6.x LTS

.. _supported-browsers:

Web browser
```````````
A current web browser is necessary on every client that shall display the Workflow Accelerator user interface. 
The following list shows the supported web browsers and versions:

* Google Chrome 23 or newer
* Mozilla Firefox 10 or newer
* Microsoft Internet Explorer 9 or newer
* Apple Safari 5 or newer

.. include:: unpack.rst

.. _install-java:

Installing Java
---------------
The application server requires a Java runtime environment in order to execute Workflow Accelerator’s Java backend.
You must install Java 8 64-bit on the application server. 
Download an installation package for your operating system here:

https://www.java.com/en/download/manual.jsp

.. _install-tomcat:

Installing Tomcat
-----------------
The Java backend of the Workflow Accelerator system is executed using Apache Tomcat.
Workflow Accelerator supports Apache Tomcat 64-bit versions 7 and 8.
We recommend using the newer version Tomcat 8. 

You can download the latest installation files for different operating systems from the following site:

http://tomcat.apache.org/download-80.cgi

In general, please make sure the user executing the Tomcat has read/write permissions for the ``$TOMCAT_HOME/webapps`` directory and its sub-directories.

Windows
```````
If you are using a Windows system, the download site offers a Windows Service Installer (“32-bit/64-bit Windows Service Installer”). 
This installer will install the Apache Tomcat as a Windows service which can be started, stopped and configured over a graphical user interface. 
The service installer is the recommended way for Windows users to install the Tomcat server. 
Please, make sure you execute the installer with administrator privileges.

Furthermore, it is recommended to install the Apache Tomcat into a root directory on ``C:\``\ .

Debian
``````
If you are using Linux, consider installing Apache Tomcat using a package manager.
On Debian, you can use the Advanced Packaging Tool (APT) and execute one of the following commands: ::

    apt-get install tomcat7
    apt-get install tomcat8

Configuring Tomcat
------------------
This section will point the configuration options that are required to run Workflow Accelerator. 
However, Tomcat offers more configuration options that can be found in the official documentation:

http://tomcat.apache.org/tomcat-8.0-doc/

Java options
````````````
There are some Java options that need to be configured before starting the Tomcat server. 
These options are configured using the ``JAVA_OPTS`` environment variable. 
It should contain the following values:

+---------------------------+-----------------------------------------------------------------+
| ``-Xms1536m``             | minimum RAM, should be at least 1.5GB                           |
+---------------------------+-----------------------------------------------------------------+
| ``-Xmx2048m``             | maximum RAM, should be at least 2GB but more is recommended     |
+---------------------------+-----------------------------------------------------------------+
| ``-Dfile.encoding=UTF-8`` | sets UTF-8 as Apache Tomcat’s default encoding mechanism        |
+---------------------------+-----------------------------------------------------------------+
| ``-XX:PermSize=128m``     | initial permanent generation space in MB                        |
+---------------------------+-----------------------------------------------------------------+
| ``-XX:MaxPermSize=256m``  | maximum permanent generation space in MB                        |
+---------------------------+-----------------------------------------------------------------+

In order to allocate sufficient RAM to the Tomcat server you have to set the ``Xms`` and ``Xmx`` options, followed by the number of MB allocated and a literal ``m``. 
``Xms`` defines the initial/minimum amount of RAM that is used and ``Xmx`` the allowed maximum. 
You are advised to allocate at least 2GB of RAM to the Tomcat. 
However, it is recommended to use more RAM. For example, if you want to assign 4GB of maximum RAM the option would be ``-Xmx4096m``\ .

The values for the permanent generation space have to be increased as well, these are defined by the values ``-XX:PermSize=128m`` and ``-XX:MaxPermSize=256m``\ .

Windows
```````
If you installed Tomcat using the Windows service installer, you can open the configuration dialog by opening the Windows start menu and selecting ``Program Files\Apache Tomcat\Configure Tomcat``\ .

.. figure:: _static/images/Configure_Tomcat_Windows.png
    :align: center
    :scale: 70%

    The Java tab of the Tomcat configuration dialog

The tab Java offers the possibility to set the options and define the memory pool (minimum and maximum RAM usage). 
Fill in the values for Xms and Xmx into the fields for memory pool and add the other options to the text area labeled as Java Options.

Debian
``````
One way to define the ``JAVA_OPTS`` under Debian and other Linux distributions is to create the file ``setenv.sh`` in the Tomcat ``/bin/`` directory. 
This directory contains also other files like the ``catalina.sh``\ , the ``startup.sh`` or the ``shutdown.sh`` und is for instance located in ``/usr/share/tomcat8`` or a similar directory.
Simply create or extend any existing setenv.sh file and add the line for ``the JAVA_OPTS``\ : ::

    export JAVA_OPTS="$JAVA_OPTS -Xms1536m [... add the other options]"

In case you have created a new ``setenv.sh`` file, you have to make sure it is executable using the ``chmod`` command: ::

    chmod a+x setenv.sh

Setup the Tomcat connector
``````````````````````````
By default the Tomcat server will start up using port 8080 and 8005. 
Port 8080 is used for serving the Workflow Accelerator web application. Port 8005 is used to shutdown the Tomcat instance. 
You can change the port in the server.xml which is located in ``$TOMCAT_HOME/conf/server.xml``\ .

.. hint:: If the server is running on any other port than port 80, your users will have to enter the port in the address line of the web browser, e.g. http://workflow.yourdomain.com:8080/\ .

Locate the HTTP connector and change the value of port to your preferred port.
Furthermore, make sure the connector contains the entry ``URIEnconding="UTF-8"``\ .
For example, the connector could look like this:

::

    <Connector port="80" protocol="HTTP/1.1" 
        connectionTimeout="20000" 
        redirectPort="8443" 
        URIEncoding="UTF-8" />

Installing the Workflow Accelerator web application
---------------------------------------------------
The Workflow Accelerator web application, which can be found in the directory ``$WORKFLOW_HOME/workflow/ROOT``, needs to be copied to the Tomcat’s ``webapps`` directory.
Remove any files and directories that are located in ``$TOMCAT_HOME/webapps`` and copy the ``ROOT`` directory to ``$TOMCAT_HOME/webapps/``\ .

The Workflow Accelerator application needs to run as the ROOT application in the Tomcat.
Running it in parallel with another application that requires to run as the ROOT application in the same Tomcat is currently not possible.

.. _install-mongodb:

Installing MongoDB
------------------
MongoDB is currently the only database system that Workflow Accelerator supports.
If you already have an infrastructure that can provide a MongoDB version 3.4.x instance, simply create a new instance for Workflow Accelerator and skip to :ref:`configure-mongodb`.
Otherwise continue with the installation instructions.

General information about installing MongoDB on different operating systems can be found at:

https://docs.mongodb.com/manual/installation/

There are two versions of MongoDB, *MongoDB Community Edition* and *MongoDB Enterprise*. 
*MongoDB Community Edition* can be used free of charge even in a commercial context, whereas *MongoDB Enterprise* is a commercial product that offers additional tooling and support.
You can use either version with Workflow Accelerator.

In case you are using Linux, you have the possibilities to install MongoDB using either a package manager like ``apt-get`` or downloading the binaries directly. 
It is recommened to use the package manager because it will also setup scripts that allow you to start and stop the server easily. 
However, you have to make sure the correct version is installed. :ref:`install-mongodb-debian` explains in more details how to setup MongoDB on Debian and might work as an example for other Linux distributions.

Remarks for downloading the binaries
````````````````````````````````````
You can find a version of MongoDB for your operating system here: 

https://www.mongodb.com/download-center

Windows
```````
Windows requires you to download the binaries. 
Consider the remarks of the last subsection when doing so. 
If you are using any version older than Windows Server 2008 R2, you have to download the 64-bit legacy release. 

You can find more details about installing MongoDB on Windows in the documentation:

https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/

When you finished downloading MongoDB follow the next steps:

#. Start the installation by double-clicking the downloaded MongoDB ``.msi`` and following the instructions.

    * You can select another install directory, e.g. ``C:\MongoDB``, if you choose the *Custom* installation option.

#. Create a data directory for the MongoDB files, e.g. ``C:\MongoDB\data``\ . 

    * This directory will need the most disk space. Make sure the drive has sufficient disk space.

#. Create a logs directory for the MongoDB log files, e.g. ``C:\MongoDB\logs``\ .
#. Copy the file ``$WORKFLOW_HOME\db\mongod.cfg`` to your MongoDB directory ``C:\MongoDB\mongod.cfg`` and edit the file.

    * The ``dbPath`` under ``storage`` must contain the absolute path to the data directory, e.g. ``C:\MongoDB\data``\ .
    * The ``path`` under ``systemLog`` must contain the absolute path to the log file, e.g. ``C:\MongoDB\logs\mongodb.log``\ . The log file will be created once MongoDB is started.
    * The configuration file needs to be in a valid `YAML <http://yaml.org>`_ format. You can use an online checker like `YAML Lint <http://www.yamllint.com/>`_ to verify the validity.
    * See :ref:`configure-mongodb` for more information about the other configuration values.

#. Open the command line ``cmd`` with administrative privileges and execute the following command. Make sure to use absolute paths and replace them with the matching ones on your system.

    * ``C:\MongoDB\bin\mongod.exe --config C:\MongoDB\mongod.cfg --install``
    * The command line should tell you that the service MongoDB was properly created.
    * You can unregister the service again by executing: ``C:\MongoDB\bin\mongod.exe --remove``
    * The registered service should start MongoDB automatically on startup of Windows.

#. You can now start MongoDB by executing the following command: ``net start MongoDB``
    
    * You can stop MongoDB by calling: ``net stop MongoDB``
    * The service is also listed in the services window that can be opened by running ``services.msc``\ .

.. _install-mongodb-debian:

Debian
``````
If you are installing MongoDB on a Debian system, you are advised to use the method described in the MongoDB configuration:

https://docs.mongodb.org/manual/tutorial/install-mongodb-on-debian/

For convenience, the script ``$WORKFLOW_HOME/mongodb.install.debian.sh`` wraps the necessary commands for installing the correct version of MongoDB on *Debian 7 Wheezy* using ``apt-get``.
Simply execute it from the command line by opening ``$WORKFLOW_HOME`` and calling: ::

    sudo ./mongodb.install.debian.sh

This will add the MongoDB repositories to your package sources and install the version 3.2.x of MongoDB.
Note that this script only works with Debian 7 Wheezy.
You can now simply start and stop the MongoDB server by calling ::

    sudo /etc/init.d/mongod start

or ::

    sudo /etc/init.d/mongod stop

The server will use the default configuration file ``/etc/mongod.conf``\ . 
See the next subsection for more information on how to configure MongoDB for Workflow Accelerator and create the required user. 
Note that the installation probably already started the MongoDB server. 
You will need to restart the MongoDB server after you edit the configuration.

.. _configure-mongodb:

Configuring MongoDB
-------------------
In order to run MongoDB properly, some configuration options have to be defined. 
The easiest solution is to create a configuration file and link this configuration file when starting MongoDB with the ``--config`` option.
The MongoDB configuration uses the `YAML <http://yaml.org>`_ format, you can use an online checker like `YAML Lint <http://www.yamllint.com/>`_ to verify that your configuration file has the proper format.

If you installed MongoDB under Windows using the method in the last section, you have already copied the predefined configuration file and adjusted the values for ``dbPath`` and ``systemLog`` ``path`` to your system. Then your configuration file already contains all necessary values.

If you installed MongoDB under Linux using ``apt-get``, e.g. by following the instructions in the last section, there should be a ``/etc/mongod.conf`` configuration file. 
Edit this configuration file. The ``dbPath``, ``systemLog`` ``path`` properties should already be defined. It is recommened to set the ``logAppend`` property to ``true`` and the ``authorization`` property to ``enabled``.

In any other case make sure the configuration file contains the following properties. ::

    systemLog:
      destination: file
      path: /var/log/mongodbdb/mongodb.log
      logAppend: true
    storage:
      dbPath: /var/lib/mongodb
    security:
      authorization: enabled

.. tabularcolumns:: |p{3cm}|p{12cm}|

+-------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``dbPath``        | Defines the directory where the database files are stored.                                                                                                       | 
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``path``          | Defines the file that will contain the logging output.                                                                                                           |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``logAppend``     | Indicates that new logs will be appended to an existing log file after restarting the server, if set to true.                                                    |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``authorization`` | (optional) Turns authentication on, if set to ``enabled``. It is advised to turn authentication on in case the MongoDB instance can be accessed over the network.|
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If you have installed MongoDB on Debian using a package manager, the default configuration file will probably contain the following entry: ::

    net:
      bindIp: 127.0.0.1

This setting tells MongoDB to only bind to the local interface and reject remote connections.
If you plan to install MongoDB and Tomcat on different machines, you must update this setting and either remove it or add the IP interface MongoDB should bind to, in order to listen for incoming connections.
This value can contain a comma separated list of IPs and should NOT contain the IP address of the application server.

For more configuration options, see https://docs.mongodb.org/manual/reference/configuration-options/\ .

.. _add-mongodb-user:

Add a database user for Workflow Accelerator
````````````````````````````````````````````
Workflow Accelerator requires a MongoDB user in the admin database that has the following roles:

.. tabularcolumns:: |p{5cm}|p{10cm}|

========================    ========================
``dbAdminAnyDatabase``
``readWriteAnyDatabase``
``clusterAdmin``            This role will allow you to list all databases. This becomes necessary if you plan on using the user credentials when editing any database content with a tool like Robomongo. Furthermore, it is necessary for creating backups.
``userAdminAnyDatabase``    This role is required for backups.
========================    ========================

The user will access the databases for Workflow Accelerator. 
Workflow Accelerator will create two databases, one for the user and workflow data, and one for uploaded files. 
The name of the first database can be configured in the Workflow Accelerator configuration file. The name of the second database is derived from the name of the first one by adding “-files”. For instance, if you define the database name “signavio”, the databases “signavio” and “signavio-files” will be created.

In general, if you want to create a new user in MongoDB you will need to authenticate with an existing user that has the role userAdmin or userAdminAnyDatabase. 
There is an exception for a fresh MongoDB setup. 
It will allow you to create the first user from localhost without any authentication. 
The following examples will show you how to create a new user using the credentials of an admin user and how to do it without any credentials in case of a new MongoDB.

In order to add a new user to MongoDB, the MongoDB server has to be running. 
The following subsections will show you how to create the Workflow Accelerator database user using the command line. 

Windows
^^^^^^^

#. Open the command line ``cmd`` and go to your MongoDB\bin directory, e.g. by executing: ``cd C:\MongoDB\bin``
#. If you have an admin user, create the Workflow Accelerator user by executing: 

    * ``mongo.exe admin -u admin -p <enterYourAdminPasswordHere> --eval "db.createUser( { user: 'signavio', pwd: '<enterSignavioPasswordHere>', roles: ['dbAdminAnyDatabase', 'readWriteAnyDatabase', 'clusterAdmin', 'userAdminAnyDatabase'] } )"``
    * Replace <enterAdminPasswordHere> with the password, you have defined for the admin user.
    * Replace <enterSignavioPasswordHere> with the password for the new Workflow Accelerator user. As you can see the user name is signavio.

#. If you have a new MongoDB and no admin user, create the Workflow Accelerator user by executing:
    
    * ``mongo.exe admin --eval "db.createUser( { user: 'signavio', pwd: '<enterSignavioPasswordHere>', roles: ['dbAdminAnyDatabase', 'readWriteAnyDatabase', 'clusterAdmin', 'userAdminAnyDatabase'] } )"``
    * Replace <enterSignavioPasswordHere> with the password for the new Workflow Accelerator user. As you can see the user name is signavio.

#. You can verify the creation of the new Workflow Accelerator user by executing:
    
    * ``mongo.exe admin -u signavio -p <enterSignavioPasswordHere> --eval "db.getUser('signavio');"``
    * On the command line you will see the user information including the four assigned roles.

Debian
^^^^^^
If you have installed MongoDB using a package manager, the binaries should be available on the path. Otherwise, open the directory with the MongoDB binary files and follow the instructions.

#. If you have an admin user, create the Workflow Accelerator user by executing: 

    * ``mongo admin -u admin -p <enterYourAdminPasswordHere> --eval "db.createUser( { user: 'signavio', pwd: '<enterSignavioPasswordHere>', roles: ['dbAdminAnyDatabase', 'readWriteAnyDatabase', 'clusterAdmin', 'userAdminAnyDatabase'] } )"``
    * Replace <enterAdminPasswordHere> with the password, you have defined for the admin user.
    * Replace <enterSignavioPasswordHere> with the password for the new Workflow Accelerator user. As you can see the user name is signavio.

#. If you have a new MongoDB and no admin user, create the Workflow Accelerator user by executing:
    
    * ``mongo admin --eval "db.createUser( { user: 'signavio', pwd: '<enterSignavioPasswordHere>', roles: ['dbAdminAnyDatabase', 'readWriteAnyDatabase', 'clusterAdmin', 'userAdminAnyDatabase'] } )"``
    * Replace <enterSignavioPasswordHere> with the password for the new Workflow Accelerator user. As you can see the user name is signavio.

#. You can verify the creation of the new Workflow Accelerator user by executing:
    
    * ``mongo admin -u signavio -p <enterSignavioPasswordHere> --eval "db.getUser('signavio');"``
    * On the command line you will see the user information including the four assigned roles.

Once the Workflow Accelerator user is created, its credentials have to be added to the Workflow Accelerator configuration file to the ``effektif.mongodb.username`` and ``effektif.mongodb.password`` properties. 
Section :ref:`update-effektif-configuration` explains how to update the configuration file.

Backup and restore
``````````````````
You are advised to do regular backups of the MongoDB database to prevent a complete data loss in case of a system failure. The Workflow Accelerator system will NOT backup the user data on its own. 
The :ref:`backup` section explains in detail how to set up backups for MongoDB properly. 
The :ref:`restore` section explains how you can restore an older version of the user data from a backup.

Installing Node.js
------------------
.. important:: You only need to install and configure Node.js if you purchased a version of Workflow Accelerator which allows you to use JavaScript tasks.

Node.js is a runtime environment for JavaScript which is used by Workflow Accelerator to execute custom JavaScript tasks created by the user.
We recommend using the Node.js LTS (Long Term Support) version 6.x.

Windows
```````
For Windows there is a comfortable installer to setup Node.js.

#. Go to https://nodejs.org/en/download/
#. Select the LTS version.
#. Download the *Windows Installer (.msi)* for your Windows version.
#. Execute the downloaded installer and follow installation guide.

Debian
``````
The Node.js site offers additional documentation for setting up Node.js on Debian using the package manager APT:

https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions

Please, make sure to install the LTS version of Node.js.

.. _install-script-engine:

Installing the Workflow Accelerator Script Engine
-------------------------------------------------
.. important:: You only need to install and configure the Script Engine if you purchased a version of Workflow Accelerator which allows you to use JavaScript tasks.

The Workflow Accelerator Script Engine uses Node.js to execute JavaScript tasks within a workflow and an embedded HTTP server to communicate with the Workflow Accelerator web application.
You can either install the Script Engine on the same machine as the Workflow Accelerator web application or on a separate machine.
However, if you use a separate machine to run the script engine, you have to make sure the web application can connect over HTTP to the configured port of the script engine and vice versa.
In order to install the script engine, follow these instructions:

#. Create new local directory for the script engine, e.g. ``C:\Program Files\Script Engine`` or ``/var/lib/script-engine``.

    * We will refer to this directory as ``$SCRIPT_ENGINE_HOME``.

#. Copy the content of the directory ``$WORKFLOW_HOME/script-engine/`` to your newly created directory.

    * You should find the file ``server.js`` directly within your directory: ``$SCRIPT_ENGINE_HOME/server.js``.

#. Open ``$SCRIPT_ENGINE_HOME/configuration.onpremise.js`` and edit the values for the port, log files and Workflow Accelerator URL.

    * Ensure that the port for the script engine is not used by any other application.

#. Add the URL of the script engine to the Workflow Accelerator configuration file, see :ref:`update-effektif-configuration` for more information.
    
    * If you run the script engine on the same machine as the web application and use the default port the URL will be ``http://localhost:8081``.

The configuration file offers the following options:

=====================   ==================================================================
``port``                Defines the port the script engine will bind to and listen for incoming HTTP requests.
``workflowUrl``         Defines the URL of the Workflow Accelerator system (including port), e.g. ``http://localhost:8080``
``log`` ``file``        Defines the location and name of the script engine log file. You can an absolute or relative path. By default, the log files are stored in the same directory as the script engine.
``log`` ``errorFile``   Defines the location and name of the script engine error log file.
=====================   ==================================================================

After the successful setup you can start the script engine by opening the ``$SCRIPT_ENGINE_HOME`` directory on a command line and executing the following command ::
    
    node server.js


Wrapping the Script Engine into a service
`````````````````````````````````````````
The script engine can be executed as shown above by running the command on a command line. 
However, it might be useful for production systems to run the script engine as a service or daemon. 
The following sub sections describe one possibility for each supported operating system which can be used the accomplish this goal.
Note, Signavio offers no support for any usage of third-party tools. 
Use them at your discretion.

Windows
^^^^^^^
For Windows there are several software tools which allow you to wrap a script into a service and monitor the execution. 
The `Non-Sucking Service Manager <http://nssm.cc/>`_ (NSSM) is such a free tool which allows you to wrap any executable into a Windows service.

#. Download NSSM from http://nssm.cc/download
#. Create a new local installation directory for NSSM, e.g. ``C:\Program Files\NSSM``.
#. Unzip the downloaded file and copy either the 64-bit ``win64\nssm.exe`` or the 32-bit ``win32\nssm.exe`` file to your new local directory.
#. Add the installation directory of NSSM to the environment variable ``PATH`` in the Windows system settings.

    * This is necessary to use the ``nssm`` executable on the command line without an absolute path.

#. Open the command line ``cmd`` with administrative privileges.
#. Execute ``nssm install script-engine``.
#. The NSSM configuration dialog open
#. In the *Application* tab fill in the following information:

    * *Path*: the path to the Node.js .exe file, e.g. ``C:\Program Files\nodejs\node.exe``
    * *Startup directory*: the value of ``$SCRIPT_ENGINE_HOME``, e.g. ``C:\Program Files\Script Engine``.
    * *Arguments*: the exact value ``server.js``
    .. image:: _static/images/nssm/nssm01.png
        :align: center

#. In the *Details* tab fill in the following information:

    * *Display name*: the name of the service shown in ``services.msc``
    * *Description*: a description which will help you to recognise the service
    * *Startup type*: choose if the service shall start automatically on startup or if you want to start it manually
    .. image:: _static/images/nssm/nssm02.png
        :align: center    

#. Fill in any other service configuration settings you deem appropriate for your system in the other tabs.
#. Click on *Install service*.

Now you can start the script engine with the following command: ::
    
    nssm start script-engine

You can check the status of the script engine by executing: ::

    nssm status script-engine

In order to stop the script engine again, execute the following command: ::

    nssm stop script-engine

While it is running, you can open your browser and go to the URL you have configured for the script engine, by default this ``http://localhost:8081``.
If the engine is running, you will see a blank page with this content: ``{}``

Besides using ``nssm`` on the command line, you will find a new service when you open the ``services.msc``.
The script engine will show up under the name you configured as display name.
You can start and stop the script engine from here as well.

Linux
^^^^^
On Linux this task is usually accomplished with Init scripts using the respective Init system of your Linux distribution. 
Because there are several different Init systems, Signavio will not provide a template.
However, if you don't already have a template, you can find lots of matching templates for your Init system on the internet.

As mentioned before, the script engine can be started from within ``$SCRIPT_ENGINE_HOME`` by executing: ::

    node server.js

You have to ensure your Init script starts the Node.js executable ``node`` and uses the JavaScript file ``$SCRIPT_ENGINE_HOME/server.js`` as an argument.
Note, if you use a restricted user to execute the command, make sure the user has appropriate access to the ``$SCRIPT_ENGINE_HOME`` directory.

.. _configure-effektif:

Configuring Workflow Accelerator
--------------------------------

.. _install-license:

Install the license file
````````````````````````
Along with the Workflow Accelerator application you have received the Workflow Accelerator license file license.xml. 
Before you can start the Workflow Accelerator system, you have to add the license file to the application.
Therefore, copy the license file into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . 
The Workflow Accelerator system will check your license file on startup and setup the defined number of licenses.

.. _update-effektif-configuration:

Update the Workflow Accelerator configuration file
```````````````````````````````````````````````````
Before you can start Workflow Accelerator for the first time, you need to configure some mandatory properties in the Workflow Accelerator configuration file. 
Make sure you have copied the Workflow Accelerator web application to the Tomcat’s webapps directory before continuing. 
The configuration file can be found here ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties``\ . 

The configuration file is a property file that contains one configuration option per line and key and value are separated by a ``=``.
Every line that starts with a ``#`` is commented out and will not be used.

In general, the configuration allows to configure the base URL of the Workflow Accelerator system, the mail server, the database connection and integrations with third party systems (e.g. Signavio).
If you installed the Workflow Accelerator Script Engine, you need to configure the URL to the script engine as well. As described in :ref:`install-script-engine` the URL derives from the domain (``localhost`` for the same machine) and port the script engine is running on. 

.. tabularcolumns:: |p{6cm}|p{9cm}|

==================================  =============================
``effektif.baseUrl``                (Required) The IP address or server name (including the port) of the server running the Workflow Accelerator Tomcat application server. E.g. http://workflow.yourdomain.com:8080\ . If the server is running on port 80, the port can be omitted.
``effektif.smtp.host``              (Required) The IP address or server name of the outgoing email server.
``effektif.smtp.port``              The port on which the outgoing SMTP server listens
``effektif.smtp.ssl``               If SSL should be used ( true or false )
``effektif.smtp.tls``               If TLS should be used ( true or false )
``effektif.smtp.user``              The username for authentication
``effektif.smtp.password``          The password for authentication
``effektif.mail.from``              This email address is used as the sender when the Workflow Accelerator system sends out notifications.
``effektif.mail.feedback``          This email address will receive all feedback which is sent using the feedback functionality in the application.
``effektif.mongodb.servers``        A comma-separated list of MongoDB servers (hostnames). If you have MongodDB running on the same server as Tomcat, the default value of localhost is okay.
``effektif.mongodb.username``       The Workflow Accelerator MongoDB user name. If you created the user following the instructions in this guide, the name is ``signavio``.
``effektif.mongodb.password``       The password of the Workflow Accelerator MongoDB user. This is the password you defined during user creation.
``effektif.mongodb.database``       The name of the database Workflow Accelerator should use. The default value ``signavio`` is okay.
``effektif.javascript.server.url``  (Optional) The URL of the Workflow Accelerator Script Engine, e.g. ``http://localhost:8081``\ .
==================================  =============================

The following properties are only relevant if your Workflow Accelerator installation is connected to your Signavio installation. ::

    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
        serviceBaseUrl
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
        clientId
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
        clientSecret

See :ref:`signavio-integration` for more information on how to set up the integration.

Configure logging
`````````````````
The Workflow Accelerator system has its own application log file ``effektif.log``\ . 
You need to define the directory where this log file is stored. 
The directory is specified in the file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/logback.xml``\ . 
Open the file and update the following line: ::

    <property name="LOG_DIR" value="./log"/>

The value should contain an absolute path. 
Make sure the user executing Tomcat has the required read / write permissions for the directory. 

On Windows it necessary to escape all "\\". An example value could like this: ``"C:\\Logs\\Signavio"``\ .

This configuration file also enables you to change the log level in this file. 
By default, the log level is INFO. 
However, in a scenario where you require official support, you will be asked to set the log level to DEBUG. 
In order to so, update the following: ::

    <root level="INFO">

Change it to: ::

    <root level="DEBUG">

You will need to restart the Tomcat server for the changes to take effect. 
You can find more detailed information on how to start the Tomcat server in the next section.

The log file is configured to do a roll over. 
Every day, a new log file is created which contains a timestamp in the filename similar to ``effektif-2014-10-09.log``\ . 
The most recent log entries can still be found in the file effektif.log. 
After 30 days, the log files will be removed automatically. 

