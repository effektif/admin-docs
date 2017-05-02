.. _update:

Updating Signavio Workflow Accelerator
======================================
This section will guide you through an update of your Workflow Accelerator system. 
It assumes you have successfully installed an early version of Workflow Accelerator. 
If you are installing Workflow Accelerator for the first time, you can skip this chapter.

First, check :ref:`update-notes` for additional information about the update to the latest version of Workflow Accelerator before continuing.

.. _update-unpack-effektif:

.. include:: unpack.rst

.. _update-stop-effektif:

Stop Workflow Accelerator
-------------------------
Before you can start with the update process you have to shutdown the Workflow Accelerator system. 
It is sufficient when you shutdown the Tomcat server Workflow Accelerator is running on. 
You don't have to shutdown the MongoDB server. 
If you installed the Workflow Accelerator Script Engine, you need to stop it as well.
Refer to chapter :ref:`stopping` for information on how to stop Workflow Accelerator.

Backup MongoDB
--------------
Updating Workflow Accelerator to a newer version might involve changes in the database schema. 
Therefore, you are requested to backup the database before you go on. 
See chapter :ref:`backup` for more information on how to create a backup. 
Furthermore, the backup is necessary in case you have to revert Workflow Accelerator to an older version, because changes of the database schema are in general not backward compatible. 
This means you cannot run an older version of Workflow Accelerator with a database that was already migrated to a newer version.

.. _update-backup-configuration:

Backup the configuration files
------------------------------
During the first setup you have modified some configuration files and added the Workflow Accelerator license file. 
In order to preserve those changes, you have to copy those files to another location before updating the Workflow Accelerator system. 
You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .

=================================   ================================================
``effektif-onpremise.properties``   Workflow Accelerator configuration file
``logback.xml``                     configuration file for Workflow Accelerator logs
``license.xml``                     Workflow Accelerator license file
=================================   ================================================

Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ .

If you installed the Workflow Accelerator Script Engine, you modified the configuration file ``configuration.onpremise.js`` of the script engine as well.
You can find the configuration file directly within the ``$SCRIPT_ENGINE_HOME`` directory. 
Please copy it as well to another location before you go on.

.. _update-install-version:

Install a new version
---------------------
In order to update the Workflow Accelerator system, you have to replace the ``ROOT`` folder in ``$TOMCAT_HOME/webapps`` with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/webapps``\ . 

#. Delete the directory ``$TOMCAT_HOME/webapps/ROOT`` completely. 
#. Copy the directory ``$WORKFLOW_HOME/webapps/ROOT`` to ``$TOMCAT_HOME/webapps``\ .
#. Copy the configuration files you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ .
#. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ .

If you have installed the Workflow Accelerator Script Engine, you need to update the content of the ``$SCRIPT_ENGINE_HOME`` directory with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/nodejs``\ .

#. Delete all files in the directory ``$SCRIPT_ENGINE_HOME``.
#. Copy the content of the directory ``$WORKFLOW_HOME/nodejs`` to your ``$SCRIPT_ENGINE_HOME`` directory.
#. Copy the configuration file ``configuration.onpremise.js`` you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$SCRIPT_ENGINE_HOME``.

If you have installed the Workflow Accelerator Mail Relay, you need to update the content of the ``mail-relay.jar`` file within the ``$MAIL_RELAY_HOME`` directory with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/mail-relay``\ .

#. Delete the file ``$MAIL_RELAY_HOME/mail-relay.jar``
#. Copy the file ``$WORKFLOW_HOME/mail-relay/mail-relay.jar`` to your ``$MAIL_RELAY_HOME`` directory.

.. _update-revisit-configuration:

Revisit the configuration files
-------------------------------
After upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values.
Refer to section :ref:`configure-effektif` and make sure your Workflow Accelerator configuration file is up-to-date before starting the system again.

Start Workflow Accelerator
--------------------------
When you have successfully installed the new Workflow Accelerator version and verified that the configuration files are up-to-date, you can restart the Workflow Accelerator system. 
Refer to chapter :ref:`starting-effektif` for more information on how to start Workflow Accelerator. 

During the first startup the Workflow Accelerator system will migrate the database if there are any outstanding schema changes. 
Therefore, the startup might take a short while depending on the size of your database. 
If the system doesn't become available again within minutes, please check the Workflow Accelerator log file for any new error reports.

Restore an older version
------------------------
In case of exceptional problems you might want to restore an older version of Workflow Accelerator. 
Be aware, if you revert Workflow Accelerator to an older version, it is not guaranteed that you can keep on using your current database. 
The upgrade to a newer version can involve schema changes that render the database incompatible with older versions of Workflow Accelerator. 
In this situation, the Workflow Accelerator system will not start if it detects a newer version of the database schema which it doesn't support. 
This is the reason why you should create a backup before updating the system. 

In order to restore an older version, you can follow the instructions in this chapter again. However, instead of creating a backup you should restore an older backup.

#. Unpack the older version of Workflow Accelerator, see :ref:`update-unpack-effektif`
#. Stop the Workflow Accelerator system, see :ref:`update-stop-effektif`
#. Restore an earlier back up that was taken while the old Workflow Accelerator version was deployed. See chapter :ref:`restore` for more information on how to restore a backup.
#. Backup the configuration files, see :ref:`update-backup-configuration`
#. Install the older version of the webapp in ``$TOMCAT_HOME/webapps``\ , see :ref:`update-install-version`
#. Install the older version of the script engine in ``$SCRIPT_ENGINE_HOME``, see :ref:`update-install-version`
#. Install the older version of the mail relay in ``$MAIL_RELAY_HOME``, see :ref:`update-install-version`
#. Check the configuration files again, see :ref:`update-revisit-configuration`
#. Start the Workflow Accelerator system, see :ref:`starting-effektif`

Now, the Workflow Accelerator system should be running with the older version again.