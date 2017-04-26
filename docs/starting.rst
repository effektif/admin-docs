.. _starting-effektif:

Starting Signavio Workflow Accelerator
======================================
If you have finished the setup successfully, you can go on and start the Workflow Accelerator application. 
You can use the checklist in the next subsection to verify you didn’t forget anything. 
The following subsection explains how to start Workflow Accelerator on different operating systems.

Checklist
---------
Before starting Workflow Accelerator, use the following checklist to make sure everything is setup properly.

* Oracle Java 8 is installed
* Apache Tomcat 7 or 8 is installed

    * the Java options are configured

* MongoDB is installed
    
    * MongoDB is configured
    * a MongoDB user for Workflow Accelerator was created

* the Workflow Accelerator ROOT folder was copied into the Tomcat webapps directory
* the Workflow Accelerator license was copied to the correct directory
* the Workflow Accelerator configuration file was updated

    * the base URL is set
    * the mail configuration is set
    * the database connection is set

* the Workflow Accelerator log file is configured

If your version includes the execution of JavaScript tasks:

* Node.js is installed
* the Workflow Accelerator Script Engine is installed
* the Workflow Accelerator Script Engine is configured

    * the port is set
    * the Workflow Accelerator URL is set
    * the log files are configured
    * the script engine URL is configured in the Workflow Accelerator configuration file

If the system is integrated with the Signavio Process Manager check also the following points:

* Workflow Accelerator and Signavio Process Manager have compatible versions
* Workflow Accelerator is configured in the Signavio Process Manager configuration.xml
* Signavio Process Manager is configured in the Workflow Accelerator configuration file

Start Workflow Accelerator
--------------------------
After completing the installation as described above, both the MongoDB database and the Tomcat application server must be started for Workflow Accelerator to run properly. 
This section will give you more details on how to start them.

Windows
```````

MongoDB
^^^^^^^
If you followed the instructions in this guide and registered a service for MongoDB, you can simply start the MongoDB server by opening a command line with administrator privileges and execute the following command: ::

    net start MongoDB

The registration also defined the startup type of the MongoDB service as “Automatic” which means it will start automatically if you restart the Windows system.
Alternatively, you can manage the MongoDB service by opening the ``services.msc``\ . 
There, MongoDB will be listed among the other services and can be started and stopped.

Tomcat
^^^^^^
Assuming you installed Tomcat using the Windows service installer, you can open the Tomcat configuration dialog again by opening the Windows start menu and selecting ``Program Files\Apache Tomcat\Configure Tomcat``\ . 
The tab General contains respective buttons to start and stop the Tomcat service. 

.. figure:: _static/images/Start_Tomcat_Windows.png
    :align: center
    :scale: 70%

Furthermore, you have the option to define the startup type of the service. 
By default, this should be “Manual” which means you have to start the Tomcat server manually each time the server restarts. 
You can change the type to “Automatic”. 
Then the Tomcat server will start automatically each time you restart your Windows server.

Script Engine
^^^^^^^^^^^^^
If you installed the script engine and wrapped it into a service, you can open the ``services.msc``, locate the Signavio Script Engine service and start it there.
Otherwise open a command line, navigate to the ``$SCRIPT_ENGINE_HOME`` directory and execute: ::

    node server.js

Note, you cannot close the command line as long as the script engine is running.

Debian
``````

MongoDB
^^^^^^^
If you followed the instructions in this guide to setup MongoDB using a packet manager, some additional scripts have been installed that allow you to start, stop and restart the database very easily. 
Be aware, the execution of those scripts require root privileges. ::

    sudo service mongod start

If MongoDB is already running, you can restart the database by executing: ::
    
    sudo service mongod restart

In order to determine whether MongoDB is running or not, you can check upon the status with the following command: ::
    
    sudo service mongod status

Be aware, in earlier versions of MongoDB, e.g. 2.4.x, the scripts had a different name ``/etc/init.d/mongodb``. ::

    /etc/init.d/mongodb start
    /etc/init.d/mongodb restart
    /etc/init.d/mongodb status

Tomcat
^^^^^^
The recommended way to install Tomcat is to use a packet manager. 
Installing Tomcat under Debian with APT will install additional scripts to start, stop and restart the server. 
Be aware, the execution of those scripts might require root privileges. ::

    /etc/init.d/tomcat8 start

You can restart the Tomcat server if it is already running by executing: ::

    /etc/init.d/tomcat8 restart

Furthermore, you can check upon the status of the Tomcat and determine whether it is running or not with the following command: ::

    /etc/init.d/tomcat8 status

The examples above show only the commands for Tomcat 8. However, if you use Tomcat 7, the same commands will work with the script ``/etc/init.d/tomcat7``\ .

Script Engine
^^^^^^^^^^^^^
If you installed the script engine and setup an Init script, execute the respective start command for the Init script.
Otherwise open a command line, navigate to the ``$SCRIPT_ENGINE_HOME`` directory and execute: ::

    node server.js

Note, you cannot close the command line as long as the script engine is running.

Login to Workflow Accelerator
-----------------------------
When the Workflow Accelerator system was started properly you can see the login screen by entering the URL of your Workflow Accelerator installation in your browser. 
There are different versions of the login screen. 
If you purchased an Workflow Accelerator standalone version, you will see a form that requires an email address and a password to login.
 
.. figure:: _static/images/login.png
    :align: center

    The default Workflow Accelerator login screen

If you purchased Workflow Accelerator along with the Signavio Process Manager, you will see a login screen with one button. 
You can login to Workflow Accelerator using your Signavio Process Manager account as soon as the Workflow Accelerator users have been set up. 
Jump to section :ref:`signavio-user-management` for more information on how to set up the users. 

.. figure:: _static/images/signavio_login.png
    :align: center

    The Signavio login screen

When you click *Log in with Signavio account*\ , you will be redirected to the Signavio Process Manager and asked to authorize the access of Workflow Accelerator. 
When you click on *Grant*\ , you will be redirected back to Workflow Accelerator and automatically logged in. 
The authorization dialog is only shown the first time you use this method to login.

.. figure:: _static/images/authorization.png
    :align: center

    The Signavio authorization dialog

.. hint:: You have to be logged in to the Signavio Process Manager in order to see the authorization dialog. Otherwise, you will be redirected to the Collaboration Portal.

.. _create-initial-user:

Create the initial user
-----------------------
In case you purchased Workflow Accelerator along with the Signavio Process Manager and want to setup the integration, you don't have to create the initial Workflow Accelerator user manually. 
Please jump to section :ref:`signavio-user-management` for more information.

Workflow Accelerator users are organized in organisations. 
There is a maximum amount of organisations that can be registered on an on-premise system. 
You will find the maximum number of available organisations in your license file. 
When the initial user registers, he will automatically create the first organisation.

In order to register, enter the URL of your Workflow Accelerator installation in your browser. 
You will see the login screen of Workflow Accelerator.

Click *Register a new account*, fill in your email address and click *Register a new user*\ . 
You will then receive an email with a link to complete your registration. 
After you have done that, your Workflow Accelerator organisation is set up and you can go ahead and invite more users.

Every time a user registers using the register link on the login screen, a new organisation is created until the maximum amount is reached. 
In general, you will create one organisation and invite other users to join this organisation. 
The next subsection explains how to invite users.

Invite other users
------------------
In case this is an integrated installation with the Signavio Process Manager, please jump to section :ref:`signavio-integration` for setting up synchronization of users.

To invite other users, go to the organization configuration panel. 
That's located in the dropdown under your name in the top right corner named *Organization settings*\ . 
In section Invitations you can enter email addresses of users you want to invite. 
The amount of users that can be invited to your organisation depends on the number of user licenses you have acquired. 
All organisations on an on-premise system share the same license pool. 
This means the shown number of unused licenses is the same in every organisation. 
If one organisation invites another user the count of unused licenses in all organisations decreases.

A user can be invited to multiple organisations. 
If a user is part of two organisations, he will require two user licenses, one for each organisation he is part of.

Besides the manual invitation of every user, the enterprise version of Workflow Accelerator offers the possibility to synchronise users and groups with Active Directory.
See :ref:`synchronise-users` for more information.