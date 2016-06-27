��    1      �              ,    -     I     X  F   w  �  �  L   I  �   �  f   @  Q   �  :   �  M  4  X  �	  �   �
  �   f  �   :  .    L  H  �   �     <  Q   R  a   �  2     �   9     �     �  $        C  [   b     �  @   �       B   .  �   q     j  P   �    �     �        #     4  !   P     r     �  -   �  8   �  +   �  *   %  C   P  �  �  �       �  !   �  N   �  �  .  [   �   �   !  f   �!  Q   9"  :   �"  �  �"  �  {$  �   0&  1  �&  �   
(  .  �(  �  *  �   -     �-  N   �-  a   N.  1   �.  �   �.  &   �/     �/  %   0     =0  m   [0     �0  G   �0     +1  J   E1  =  �1     �2  [   �2    F3     X4  �  x4  3  A7     u8  !   �8     �8     �8  (   �8  B   �8  /   ?9  0   o9  C   �9   After upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values. Refer to section :ref:`configure-effektif` and make sure your Signavio Workflow configuration file is up-to-date before starting the system again. Backup MongoDB Backup the configuration files Backup the configuration files, see :ref:`update-backup-configuration` Before you can start with the update process you have to shutdown the Signavio Workflow system. It is sufficient when you shutdown the Tomcat server Signavio Workflow is running on. You don't have to shutdown the MongoDB server. If you installed the Signavio Workflow Script Engine, you need to stop it as well. Refer to chapter :ref:`stopping` for information on how to stop Signavio Workflow. Check the configuration files again, see :ref:`update-revisit-configuration` Copy the configuration files you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Copy the content of the directory ``$WORKFLOW_HOME/nodejs`` to your ``$SCRIPT_ENGINE_HOME`` directory. Copy the directory ``$WORKFLOW_HOME/webapps/ROOT`` to ``$TOMCAT_HOME/webapps``\ . Delete all files in the directory ``$SCRIPT_ENGINE_HOME``. During the first setup you have modified some configuration files and added the Signavio Workflow license file. In order to preserve those changes, you have to copy those files to another location before updating the Signavio Workflow system. You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . During the first startup the Signavio Workflow system will migrate the database if there are any outstanding schema changes. Therefore, the startup might take a short while depending on the size of your database. If the system doesn't become available again within minutes, please check the Signavio Workflow log file for any new error reports. First, check :ref:`update-notes` for additional information about the update to the latest version of Signavio Workflow before continuing. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ . If you have installed the Signavio Workflow Script Engine, you need to update the content of the ``$SCRIPT_ENGINE_HOME`` directory with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/nodejs``\ . If you installed the Signavio Workflow Script Engine, you modified the configuration file ``configuration.onpremise.js`` of the script engine as well. You can find the configuration file directly within the ``$SCRIPT_ENGINE_HOME`` directory. Please copy it as well to another location before you go on. In case of exceptional problems you might want to restore an older version of Signavio Workflow. Be aware, if you revert Signavio Workflow to an older version, it is not guaranteed that you can keep on using your current database. The upgrade to a newer version can involve schema changes that render the database incompatible with older versions of Signavio Workflow. In this situation, the Signavio Workflow system will not start if it detects a newer version of the database schema which it doesn't support. This is the reason why you should create a backup before updating the system. In order to restore an older version, you can follow the instructions in this chapter again. However, instead of creating a backup you should restore an older backup. Install a new version Now, the Signavio Workflow system should be running with the older version again. On Linux systems you need to make the scripts executable with the ``chmod`` command like this: :: ROOT - this directory contains the web application Restore an earlier back up that was taken while the old Signavio Workflow version was deployed. See chapter :ref:`restore` for more information on how to restore a backup. Restore an older version Revisit the configuration files Signavio Workflow configuration file Signavio Workflow license file Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ . Start Signavio Workflow Start the Signavio Workflow system, see :ref:`starting-effektif` Stop Signavio Workflow Stop the Signavio Workflow system, see :ref:`update-stop-effektif` This section will guide you through an update of your Signavio Workflow system. It assumes you have successfully installed an early version of Signavio Workflow. If you are installing Signavio Workflow for the first time, you can skip this chapter. Unpack Signavio Workflow Unpack the older version of Signavio Workflow, see :ref:`update-unpack-effektif` Unzip the signavio-workflow-{version}.zip to a directory of your choice, e.g. ``/yourlocation/signavio-workflow-{version}`` In the rest of this guide, we'll refer to the Signavio Workflow home directory as ``$WORKFLOW_HOME``\ . The directory will contain the following files: Updating Signavio Workflow Updating Signavio Workflow to a newer version might involve changes in the database schema. Therefore, you are requested to backup the database before you go on. See chapter :ref:`backup` for more information on how to create a backup. Furthermore, the backup is necessary in case you have to revert Signavio Workflow to an older version, because changes of the database schema are in general not backward compatible. This means you cannot run an older version of Signavio Workflow with a database that was already migrated to a newer version. When you have successfully installed the new Signavio Workflow version and verified that the configuration files are up-to-date, you can restart the Signavio Workflow system. Refer to chapter :ref:`starting-effektif` for more information on how to start Signavio Workflow. \*.sh - Linux shell scripts ``effektif-onpremise.properties`` ``license.xml`` ``logback.xml`` configuration file for Signavio Workflow logs db - directory that contains MongoDB configuration files mongod.cfg - configuration file for Windows mongod.conf - configuration file for Linux spnego - directory that contains resources to setup SSO with SPNEGO Project-Id-Version: Effektif adminstrators guide 2.16
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-27 15:05+0200
PO-Revision-Date: 2016-05-03 19:49+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 Wenn das System auf eine neuere Version gebracht wird, kann es notwendig sein, die existierenden Konfigurationsdateien erneut anzupassen und entsprechende Werte hinzuzufügen, anzupassen oder zu entfernen. Konsultieren Sie hierfür erneut Abschnitt :ref:`configure-effektif` und stellen Sie sicher, dass Ihre Signavio Workflow-Konfiguration auf dem neuesten Stand ist bevor Sie das System wieder hochfahren. Backup MongoDB Sichern der Konfigurationsdateien Sichern Sie die Konfigurationsdateien, vgl. :ref:`update-backup-configuration` Before you can start with the update process you have to shutdown the Signavio Workflow system. It is sufficient when you shutdown the Tomcat server Signavio Workflow is running on. You don't have to shutdown the MongoDB server. If you installed the Signavio Workflow Script Engine, you need to stop it as well. Refer to chapter :ref:`stopping` for information on how to stop Signavio Workflow. Überprüfen Sie die Konfigurationsdateien erneut, vgl. :ref:`update-revisit-configuration` Kopieren Sie die Konfigurationsdateien, die Sie in Abschnitt :ref:`update-backup-configuration` gesichert haben, zurück in das Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Copy the content of the directory ``$WORKFLOW_HOME/nodejs`` to your ``$SCRIPT_ENGINE_HOME`` directory. Copy the directory ``$WORKFLOW_HOME/webapps/ROOT`` to ``$TOMCAT_HOME/webapps``\ . Delete all files in the directory ``$SCRIPT_ENGINE_HOME``. Während der initialen Installation haben Sie einige Konfigurationsdateien bearbeitet und die Signavio Workflow-Lizenzdatei installiert. Um diese Änderungen nicht zu verlieren, müssen die entsprechenden Konfigurationsdateien sichern und dafür an eine andere Stelle kopieren bevor Sie das Signavio Workflow-System aktualisieren. Sie finden die entsprechenden Dateien in dem Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Während der initialen Installation haben Sie einige Konfigurationsdateien bearbeitet und die Signavio Workflow-Lizenzdatei installiert. Um diese Änderungen nicht zu verlieren, müssen die entsprechenden Konfigurationsdateien sichern und dafür an eine andere Stelle kopieren bevor Sie das Signavio Workflow-System aktualisieren. Sie finden die entsprechenden Dateien in dem Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Überprüfen Sie bitte zuerst ob :ref:`update-notes` weitere Hinweise zur Aktualisierung von Signavio Workflow auf die neueste Version enthält, bevor Sie weiterlesen. Insofern Sie mit der Aktualisierung eine neue ``license.xml`` erhalten haben, kopieren Sie diese Datei in das Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` und ersetzen die bestehende Datei. Sollten Sie keine neue ``license.xml`` erhalten haben, können Sie weiterhin die alte Datei verwenden. If you have installed the Signavio Workflow Script Engine, you need to update the content of the ``$SCRIPT_ENGINE_HOME`` directory with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/nodejs``\ . If you installed the Signavio Workflow Script Engine, you modified the configuration file ``configuration.onpremise.js`` of the script engine as well. You can find the configuration file directly within the ``$SCRIPT_ENGINE_HOME`` directory. Please copy it as well to another location before you go on. Im Falle eines außergewöhnlichen Fehlers kann es notwendig sein, das System wieder auf eine ältere Version von Signavio Workflow zurückzusetzen. Seien Sie sich bitte bewusst, dass es keine Garantie gibt, dass Sie eine ältere Version von Signavio Workflow mit der aktuellen Datenbank betreiben können. Die Aktualisierung von Signavio Workflow auf eine neuere Version kann Änderungen im Datenbankschema nach sich ziehen, die wiederum die Datenbank inkompatibel zu älteren Versionen von Signavio Workflow machen. In diesen Situation wird das Signavio Workflow-System nicht starten, wenn es eine neuere Datenbankversion als die vom System unterstützte Version erkennt. Aus diesem Grund sollten Sie vor jeder Aktualisierung ein Backup der Datenbank anlegen. Um eine ältere Version wieder herzustellen, können Sie wiederum den Anweisungen in diesem Kapitel folgen. Jedoch statt ein Backup anzulegen, müssen Sie nun ein zuvor erstelltes Backup wieder herstellen. Eine neue Version installieren Jetzt sollte das Signavio Workflow-System wieder mit der alten Version laufen. On Linux systems you need to make the scripts executable with the ``chmod`` command like this: :: ROOT - Verzeichnis, das die Webanwendung enthält Stellen Sie nun ein Backup der Datenbank wieder her, welches erstellt wurde, während die alte Signavio Workflow Version installiert war. Im Kapitel :ref:`restore` finden Sie weitere Hinweise, wie Sie ein Backup wieder herstellen können. Eine ältere Version wieder herstellen Konfigurationsdateien anpassen Signavio Workflow-Konfigurationsdatei Signavio Workflow-Lizenzdatei Kopieren Sie einfach die oben genannten Dateien in ein anderes Verzeichnis, z. B. ``$TOMCAT_HOME/webapps``\ . Signavio Workflow starten Starten Sie das Signavio Workflow-System, vgl. :ref:`starting-effektif` Signavio Workflow stoppen Stoppen Sie das Signavio Workflow-System, vgl. :ref:`update-stop-effektif` Dieses Kapitel wird Sie schrittweise durch eine Aktualisierung Ihres Signavio Workflow-Systems führen. Hierbei wird angenommen, dass Sie bereits eine ältere Version von Signavio Workflow erfolgreich installiert haben. Wenn Sie Signavio Workflow zum ersten Mal installieren, können Sie dieses Kapitel überspringen. Signavio Workflow entpacken Entpacken Sie die ältere Version von Signavio Workflow, vgl. :ref:`update-unpack-effektif` Entpacken Sie das Archiv signavio-workflow-{version}.zip in einem Verzeichnis Ihrer Wahl, zum Beispiel: ``/yourlocation/signavio-workflow-{version}`` Dieses Verzeichnis wird im weiteren Text als ``$WORKFLOW_HOME`` bezeichnet. Das Verzeichnis enthält die folgenden Dateien: Signavio Workflow aktualisieren Während der Aktualisierung von Signavio Workflow auf eine neuere Version kann es vorkommen, dass das Datenbankschema angepasst werden muss. Dementsprechend sollten Sie ein Backup der Datenbank anlegen, bevor Sie mit der Aktualisierung fortfahren. In Kapitel :ref:`backup` finden Sie mehr Informationen, wie Sie ein Backup mit MongoDB anlegen. Weiterhin ist das Backup notwendig für den Fall, dass Sie eine ältere Version von Signavio Workflow wieder herstellen müssen, denn ein verändertes Datenbankschema ist im Allgemeinen nicht abwärtskompatibel. Das bedeutet, dass Sie keine ältere Version von Signavio Workflow mit einer Datenbank betreiben können, die bereits auf ein neueres Schema migriert wurde. Sobald Sie die neue Version von Signavio Workflow erfolgreich installiert und sichergestellt haben, dass die Konfiguration auf dem neuesten Stand ist, können Sie das Signavio Workflow-System wieder starten. Kapitel :ref:`starting-effektif` gibt Ihnen weitere Information, wie Sie Signavio Workflow starten. \*.sh - Linux Shellskripte  ``effektif-onpremise.properties`` ``license.xml`` ``logback.xml`` Konfiguration der Signavio Workflow Logs db – Verzeichnis, das die MongoDB Konfigurationsdateien enthält mongod.cfg - Konfigurationsdateien für Windows mongod.conf – Konfigurationsdateien für Linux spnego - directory that contains resources to setup SSO with SPNEGO 