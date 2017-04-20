.. _stopping:

Stopping Signavio Workflow Accelerator
======================================
In order to stop the Workflow Accelerator system completely, you have to stop the Tomcat application server and the MongoDB database. 
However, if you need to restart the Workflow Accelerator system, it is sufficient to restart only the Tomcat server.

Windows
```````

Tomcat
^^^^^^
As already mentioned in the section :ref:`starting-effektif`\ , the Tomcat configuration dialog offers a simple way to stop the Tomcat server. 
Simply open the Windows start menu, select ``Program Files\Apache Tomcat\Configure Tomcat``\ , open the tab *General* and click the button *Stop*\ .

MongoDB
^^^^^^^
If you have registered MongoDB as a Windows service, you can stop the database in two ways. Either you open the command line with adminstrator privileges and execute: ::

    net stop MongoDB

Or you run ``services.msc``\ , select MongoDB in the list of services and click on *Stop*\ .

Script Engine
^^^^^^^^^^^^^
If you installed the script engine and wrapped it into a service, you can open the ``services.msc``, locate the Signavio Script Engine service and stop it there.
If you are executing the script engine directly via command line, simply abort the process by pressing ``CTRL + C``.

Debian
``````

Tomcat
^^^^^^
If you installed Tomcat using a packet manager, you can simply run the following command. 
This might require root privileges. ::
    
    /etc/init.d/tomcat8 stop

The example above shows only the command for Tomcat 8. 
However, if you use Tomcat 7, the same command will work with the ``/etc/init.d/tomcat7`` script.

MongoDB
^^^^^^^
If MongoDB was setup following the instructions in this guide, you can simply stop the MongoDB server by executing the following command. 
This might require root privileges. ::

    /etc/init.d/mongod stop

In earlier versions of MongoDB, e.g. 2.4.x, the script had a different name: ``/etc/init.d/mongodb``.

Script Engine
^^^^^^^^^^^^^
If you installed the script engine and setup an Init script, execute the respective stop command for the Init script.
If you are executing the script engine directly via command line, simply abort the process by pressing ``CTRL + C``.
