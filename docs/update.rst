.. _update:

Updating Signavio Workflow
==========================
This section will guide you through an update of your Signavio Workflow system. It assumes you have successfully installed an early version of Signavio Workflow. 
If you are installing Signavio Workflow for the first time, you can skip this chapter.

First, check :ref:`update-notes` for additional information about the update to the latest version of Signavio Workflow before continuing.

.. _update-unpack-effektif:

Unpack Signavio Workflow
------------------------
Unzip the signavio-workflow-{version}.zip to a directory of your choice, e.g. ``/yourlocation/signavio-workflow-{version}``
In the rest of this guide, we'll refer to the Signavio Workflow home directory as ``$WORKFLOW_HOME``\ .
The directory will contain the following files:

* \*.sh - Linux shell scripts 
* db - directory that contains MongoDB configuration files

    * mongod.conf - configuration file for Linux
    * mongod.cfg - configuration file for Windows

* workflow - directory 

    * ROOT - this directory contains the web application

.. _update-stop-effektif:

Stop Signavio Workflow
----------------------
Before you can start with the update process you have to shutdown the Signavio Workflow system. 
It is sufficient when you shutdown the Tomcat server Signavio Workflow is running on. 
You don't have to shutdown the MongoDB server. 
Refer to chapter :ref:`stopping` for information on how to stop Signavio Workflow.

Backup MongoDB
--------------
Updating Signavio Workflow to a newer version might involve changes in the database schema. 
Therefore, you are requested to backup the database before you go on. 
See chapter :ref:`backup` for more information on how to create a backup. 
Furthermore, the backup is necessary in case you have to revert Signavio Workflow to an older version, because changes of the database schema are in general not backward compatible. 
This means you cannot run an older version of Signavio Workflow with a database that was already migrated to a newer version.

.. _update-backup-configuration:

Backup the configuration files
------------------------------
During the first setup you have modified some configuration files and added the Signavio Workflow license file. 
In order to preserve those changes, you have to copy those files to another location before updating the Signavio Workflow system. 
You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .

=================================   =============================================
``effektif-onpremise.properties``   Signavio Workflow configuration file
``logback.xml``                     configuration file for Signavio Workflow logs
``license.xml``                     Signavio Workflow license file
=================================   =============================================

Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ .

.. _update-install-version:

Install a new version
---------------------
In order to update the Signavio Workflow system, you have to replace the ``ROOT`` folder in ``$TOMCAT_HOME/webapps`` with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/workflow``\ . 

#. Delete the folder ``$TOMCAT_HOME/webapps/ROOT`` completely. 
#. Copy the folder ``$WORKFLOW_HOME/workflow/ROOT`` to ``$TOMCAT_HOME/webapps``\ .
#. Copy the configuration files you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .
#. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ .

.. _update-revisit-configuration:

Revisit the configuration files
-------------------------------
After upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values.
Refer to section :ref:`configure-effektif` and make sure your Signavio Workflow configuration file is up-to-date before starting the system again.

Start Signavio Workflow
-----------------------
When you have successfully installed the new Signavio Workflow version and verified that the configuration files are up-to-date, you can restart the Signavio Workflow system. 
Refer to chapter :ref:`starting-effektif` for more information on how to start Signavio Workflow. 

During the first startup the Signavio Workflow system will migrate the database if there are any outstanding schema changes. 
Therefore, the startup might take a short while depending on the size of your database. 
If the system doesn't become available again within minutes, please check the Signavio Workflow log file for any new error reports.

Restore an older version
------------------------
In case of exceptional problems you might want to restore an older version of Signavio Workflow. 
Be aware, if you revert Signavio Workflow to an older version, it is not guaranteed that you can keep on using your current database. 
The upgrade to a newer version can involve schema changes that render the database incompatible with older versions of Signavio Workflow. 
In this situation, the Signavio Workflow system will not start if it detects a newer version of the database schema which it doesn't support. 
This is the reason why you should create a backup before updating the system. 

In order to restore an older version, you can follow the instructions in this chapter again. However, instead of creating a backup you should restore an older backup.

#. Unpack the older version of Signavio Workflow, see :ref:`update-unpack-effektif`
#. Stop the Signavio Workflow system, see :ref:`update-stop-effektif`
#. Restore an earlier back up that was taken while the old Signavio Workflow version was deployed. See chapter :ref:`restore` for more information on how to restore a backup.
#. Backup the configuration files, see :ref:`update-backup-configuration`
#. Install the older version in ``$TOMCAT_HOME/webapps``\ , see :ref:`update-install-version`
#. Check the configuration files again, see :ref:`update-revisit-configuration`
#. Start the Signavio Workflow system, see :ref:`starting-effektif`

Now, the Signavio Workflow system should be running with the older version again.