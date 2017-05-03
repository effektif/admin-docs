Unpack Signavio Workflow Accelerator
------------------------------------
Unzip the signavio-workflow-{version}.zip to a directory of your choice, e.g. ``/yourlocation/signavio-workflow-{version}``
In the rest of this guide, we'll refer to the Workflow Accelerator home directory as ``$WORKFLOW_HOME``\ .
The directory will contain the following files:

* \*.sh - Linux shell scripts 
* db - directory that contains MongoDB configuration files

    * mongod.conf - configuration file for Linux
    * mongod.cfg - configuration file for Windows

* mail-relay - directory that contains the mail relay
* script-engine - directory that contains the script engine
* optional - directory that contains optional resources
	
	* spnego - directory that contains resources to setup SSO with SPNEGO

* webapps - directory 

    * ROOT - this directory contains the web application

On Linux systems you need to make the scripts executable with the ``chmod`` command like this: ::

    chmod a+x $WORKFLOW_HOME/*.sh