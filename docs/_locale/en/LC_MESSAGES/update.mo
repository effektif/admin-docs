��    9      �  O   �      �    �            F   3  �  z  L     �   R  �   	  f   �	  Q   
  :   e
  >   �
  M  �
  X  -  �   �  �     �   �  .  �  L  �  �   @  �   �     �  l   �  h   <  Q   �  a   �  2   Y  �   �     8     Q  $   q     �  [   �       @   )     j  B   �  �   �     �  P   �    '     ;    V    v     �  !   �     �     �  -   �  8     +   L  *   x  2   �  5   �  C         P   �  d     "     )#     8#  F   W#  �  �#  L   )%  �   v%  �   &&  f   �&  Q   7'  :   �'  >   �'  M  (  X  Q)  �   �*  �   5+  �   	,  .  �,  L  .  �   d0  �   1     �1  l   �1  h   `2  Q   �2  a   3  2   }3  �   �3     \4     u4  $   �4     �4  [   �4     55  @   M5     �5  B   �5  �   �5     �6  P   �6    K7     _8    z8    �:     �;  !   �;     �;     �;  -   	<  8   7<  +   p<  *   �<  2   �<  5   �<  C   0=     t=     5           &                                                        (                   $          %             '          2      8          4       6             3   #   !          7   /   -   
          9              .       *   	   1      ,          )   "         +         0    After upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values. Refer to section :ref:`configure-effektif` and make sure your Signavio Workflow configuration file is up-to-date before starting the system again. Backup MongoDB Backup the configuration files Backup the configuration files, see :ref:`update-backup-configuration` Before you can start with the update process you have to shutdown the Signavio Workflow system. It is sufficient when you shutdown the Tomcat server Signavio Workflow is running on. You don't have to shutdown the MongoDB server. If you installed the Signavio Workflow Script Engine, you need to stop it as well. Refer to chapter :ref:`stopping` for information on how to stop Signavio Workflow. Check the configuration files again, see :ref:`update-revisit-configuration` Copy the configuration file ``configuration.onpremise.js`` you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$SCRIPT_ENGINE_HOME``. Copy the configuration files you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Copy the content of the directory ``$WORKFLOW_HOME/nodejs`` to your ``$SCRIPT_ENGINE_HOME`` directory. Copy the directory ``$WORKFLOW_HOME/webapps/ROOT`` to ``$TOMCAT_HOME/webapps``\ . Delete all files in the directory ``$SCRIPT_ENGINE_HOME``. Delete the directory ``$TOMCAT_HOME/webapps/ROOT`` completely. During the first setup you have modified some configuration files and added the Signavio Workflow license file. In order to preserve those changes, you have to copy those files to another location before updating the Signavio Workflow system. You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . During the first startup the Signavio Workflow system will migrate the database if there are any outstanding schema changes. Therefore, the startup might take a short while depending on the size of your database. If the system doesn't become available again within minutes, please check the Signavio Workflow log file for any new error reports. First, check :ref:`update-notes` for additional information about the update to the latest version of Signavio Workflow before continuing. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ . If you have installed the Signavio Workflow Script Engine, you need to update the content of the ``$SCRIPT_ENGINE_HOME`` directory with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/nodejs``\ . If you installed the Signavio Workflow Script Engine, you modified the configuration file ``configuration.onpremise.js`` of the script engine as well. You can find the configuration file directly within the ``$SCRIPT_ENGINE_HOME`` directory. Please copy it as well to another location before you go on. In case of exceptional problems you might want to restore an older version of Signavio Workflow. Be aware, if you revert Signavio Workflow to an older version, it is not guaranteed that you can keep on using your current database. The upgrade to a newer version can involve schema changes that render the database incompatible with older versions of Signavio Workflow. In this situation, the Signavio Workflow system will not start if it detects a newer version of the database schema which it doesn't support. This is the reason why you should create a backup before updating the system. In order to restore an older version, you can follow the instructions in this chapter again. However, instead of creating a backup you should restore an older backup. In order to update the Signavio Workflow system, you have to replace the ``ROOT`` folder in ``$TOMCAT_HOME/webapps`` with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/webapps``\ . Install a new version Install the older version of the script engine in ``$SCRIPT_ENGINE_HOME``, see :ref:`update-install-version` Install the older version of the webapp in ``$TOMCAT_HOME/webapps``\ , see :ref:`update-install-version` Now, the Signavio Workflow system should be running with the older version again. On Linux systems you need to make the scripts executable with the ``chmod`` command like this: :: ROOT - this directory contains the web application Restore an earlier back up that was taken while the old Signavio Workflow version was deployed. See chapter :ref:`restore` for more information on how to restore a backup. Restore an older version Revisit the configuration files Signavio Workflow configuration file Signavio Workflow license file Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ . Start Signavio Workflow Start the Signavio Workflow system, see :ref:`starting-effektif` Stop Signavio Workflow Stop the Signavio Workflow system, see :ref:`update-stop-effektif` This section will guide you through an update of your Signavio Workflow system. It assumes you have successfully installed an early version of Signavio Workflow. If you are installing Signavio Workflow for the first time, you can skip this chapter. Unpack Signavio Workflow Unpack the older version of Signavio Workflow, see :ref:`update-unpack-effektif` Unzip the signavio-workflow-{version}.zip to a directory of your choice, e.g. ``/yourlocation/signavio-workflow-{version}`` In the rest of this guide, we'll refer to the Signavio Workflow home directory as ``$WORKFLOW_HOME``\ . The directory will contain the following files: Updating Signavio Workflow Updating Signavio Workflow to a newer version might involve changes in the database schema. Therefore, you are requested to backup the database before you go on. See chapter :ref:`backup` for more information on how to create a backup. Furthermore, the backup is necessary in case you have to revert Signavio Workflow to an older version, because changes of the database schema are in general not backward compatible. This means you cannot run an older version of Signavio Workflow with a database that was already migrated to a newer version. When you have successfully installed the new Signavio Workflow version and verified that the configuration files are up-to-date, you can restart the Signavio Workflow system. Refer to chapter :ref:`starting-effektif` for more information on how to start Signavio Workflow. \*.sh - Linux shell scripts ``effektif-onpremise.properties`` ``license.xml`` ``logback.xml`` configuration file for Signavio Workflow logs db - directory that contains MongoDB configuration files mongod.cfg - configuration file for Windows mongod.conf - configuration file for Linux nodejs - directory that contains the script engine optional - directory that contains optional resources spnego - directory that contains resources to setup SSO with SPNEGO webapps - directory Project-Id-Version: Effektif adminstrators guide 2.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-27 11:01+0200
PO-Revision-Date: 2016-06-27 13:13+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
Language: en
X-Generator: Poedit 1.6.9
 After upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values. Refer to section :ref:`configure-effektif` and make sure your Signavio Workflow configuration file is up-to-date before starting the system again. Backup MongoDB Backup the configuration files Backup the configuration files, see :ref:`update-backup-configuration` Before you can start with the update process you have to shutdown the Signavio Workflow system. It is sufficient when you shutdown the Tomcat server Signavio Workflow is running on. You don't have to shutdown the MongoDB server. If you installed the Signavio Workflow Script Engine, you need to stop it as well. Refer to chapter :ref:`stopping` for information on how to stop Signavio Workflow. Check the configuration files again, see :ref:`update-revisit-configuration` Copy the configuration file ``configuration.onpremise.js`` you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$SCRIPT_ENGINE_HOME``. Copy the configuration files you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Copy the content of the directory ``$WORKFLOW_HOME/nodejs`` to your ``$SCRIPT_ENGINE_HOME`` directory. Copy the directory ``$WORKFLOW_HOME/webapps/ROOT`` to ``$TOMCAT_HOME/webapps``\ . Delete all files in the directory ``$SCRIPT_ENGINE_HOME``. Delete the directory ``$TOMCAT_HOME/webapps/ROOT`` completely. During the first setup you have modified some configuration files and added the Signavio Workflow license file. In order to preserve those changes, you have to copy those files to another location before updating the Signavio Workflow system. You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . During the first startup the Signavio Workflow system will migrate the database if there are any outstanding schema changes. Therefore, the startup might take a short while depending on the size of your database. If the system doesn't become available again within minutes, please check the Signavio Workflow log file for any new error reports. First, check :ref:`update-notes` for additional information about the update to the latest version of Signavio Workflow before continuing. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ . If you have installed the Signavio Workflow Script Engine, you need to update the content of the ``$SCRIPT_ENGINE_HOME`` directory with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/nodejs``\ . If you installed the Signavio Workflow Script Engine, you modified the configuration file ``configuration.onpremise.js`` of the script engine as well. You can find the configuration file directly within the ``$SCRIPT_ENGINE_HOME`` directory. Please copy it as well to another location before you go on. In case of exceptional problems you might want to restore an older version of Signavio Workflow. Be aware, if you revert Signavio Workflow to an older version, it is not guaranteed that you can keep on using your current database. The upgrade to a newer version can involve schema changes that render the database incompatible with older versions of Signavio Workflow. In this situation, the Signavio Workflow system will not start if it detects a newer version of the database schema which it doesn't support. This is the reason why you should create a backup before updating the system. In order to restore an older version, you can follow the instructions in this chapter again. However, instead of creating a backup you should restore an older backup. In order to update the Signavio Workflow system, you have to replace the ``ROOT`` folder in ``$TOMCAT_HOME/webapps`` with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/webapps``\ . Install a new version Install the older version of the script engine in ``$SCRIPT_ENGINE_HOME``, see :ref:`update-install-version` Install the older version of the webapp in ``$TOMCAT_HOME/webapps``\ , see :ref:`update-install-version` Now, the Signavio Workflow system should be running with the older version again. On Linux systems you need to make the scripts executable with the ``chmod`` command like this: :: ROOT - this directory contains the web application Restore an earlier back up that was taken while the old Signavio Workflow version was deployed. See chapter :ref:`restore` for more information on how to restore a backup. Restore an older version Revisit the configuration files Signavio Workflow configuration file Signavio Workflow license file Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ . Start Signavio Workflow Start the Signavio Workflow system, see :ref:`starting-effektif` Stop Signavio Workflow Stop the Signavio Workflow system, see :ref:`update-stop-effektif` This section will guide you through an update of your Signavio Workflow system. It assumes you have successfully installed an early version of Signavio Workflow. If you are installing Signavio Workflow for the first time, you can skip this chapter. Unpack Signavio Workflow Unpack the older version of Signavio Workflow, see :ref:`update-unpack-effektif` Unzip the signavio-workflow-{version}.zip to a directory of your choice, e.g. ``/yourlocation/signavio-workflow-{version}`` In the rest of this guide, we'll refer to the Signavio Workflow home directory as ``$WORKFLOW_HOME``\ . The directory will contain the following files: Updating Signavio Workflow Updating Signavio Workflow to a newer version might involve changes in the database schema. Therefore, you are requested to backup the database before you go on. See chapter :ref:`backup` for more information on how to create a backup. Furthermore, the backup is necessary in case you have to revert Signavio Workflow to an older version, because changes of the database schema are in general not backward compatible. This means you cannot run an older version of Signavio Workflow with a database that was already migrated to a newer version. When you have successfully installed the new Signavio Workflow version and verified that the configuration files are up-to-date, you can restart the Signavio Workflow system. Refer to chapter :ref:`starting-effektif` for more information on how to start Signavio Workflow. \*.sh - Linux shell scripts ``effektif-onpremise.properties`` ``license.xml`` ``logback.xml`` configuration file for Signavio Workflow logs db - directory that contains MongoDB configuration files mongod.cfg - configuration file for Windows mongod.conf - configuration file for Linux nodejs - directory that contains the script engine optional - directory that contains optional resources spnego - directory that contains resources to setup SSO with SPNEGO webapps - directory 