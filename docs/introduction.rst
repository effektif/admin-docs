Introduction
============
This is the Signavio Workflow Accelerator administration manual. 
It will provide you with information to setup the Workflow Accelerator system on your own server infrastructure. 
Workflow Accelerator officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. 

It is possible to setup Workflow Accelerator also on other Linux distributions. 
However, the instructions in this manual are only tested for Debian. 
Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions.

Software components
-------------------
In order to setup and work with Workflow Accelerator, several software components are necessary.

Workflow Accelerator system
```````````````````````````
The Workflow Accelerator system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database.

Apache Tomcat
`````````````
The Apache Tomcat is an application server that hosts the Workflow Accelerator web application. 
The Workflow Accelerator web application serves the Workflow Accelerator application to the users’ browser and it also includes the backend of the Workflow Accelerator system.

MongoDB
```````
MongoDB is a document-oriented database system. 
It is the only database system that Workflow Accelerator supports.
You can find more detailed information in the `MongoDB documentation <https://docs.mongodb.org>`_.

Node.js
```````
Node.js is a runtime environment for JavaScript which is used by Workflow Accelerator to execute custom JavaScript tasks created by the user.

Mail server (SMTP)
``````````````````
The mail server is necessary to send notifications and invitation requests to users. 
Any server that is accessible via SMTP can be used.

Web browser
```````````
Workflow Accelerator runs as a web application. 
The user interface can be accessed using a modern web browser. 
More details about the supported browsers can be found in the section :ref:`supported-browsers`\ .

Naming conventions
------------------
Within this adminstrators guide several placeholders are used to increase the readability. 


.. tabularcolumns:: |p{4cm}|p{11cm}|

=======================	==================
``$WORKFLOW_HOME``  	Refers to the directory that contains the unzipped content of the downloaded signavio-workflow-{version}.zip.
``$TOMCAT_HOME``    	Refers to the directory where your Apache Tomcat is installed. This directory contains the folders ``webapps`` and ``conf``\ . On Linux for example the directory might be located in ``/var/lib/tomcat8``\ .
``$MONGO_HOME``     	Refers to the directory where your MongoDB is installed.
``$SCRIPT_ENGINE_HOME``	Refers to the directory where your Workflow Accelerator Script Engine is installed.
=======================	==================

Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system.
