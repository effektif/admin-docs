��    9      �              �    �     �     �  F   �  �  A  L   �  �   %  �   �  f     Q   �  :   8	  >   s	  S  �	  ^    �   e  �   �  �   �  1  �  X  �  �   4  �   �     �  l   �  h   3  T   �  a   �  2   S  �   �     5     N  [   n     �  C   �     )  E   C    �  $   �  S   �      &     (  B    k  '   �  !   �     �  !   �            0   -  8   ^  +   �  *   �  5   �  9   $  C   ^     �  �  �  �  o!     
#  !   #  N   ;#    �#  [   �%  �   &  �   �&  o   �'  X   �'  A   O(  C   �(  �  �(  �  �*  �   K,  1  �,  �   (.  M  �.    I0  �   R3  �    4     5  w   .5  w   �5  Q   6  �   p6  1   7  �   47  &   &8     M8  m   l8     �8  J   �8     B9  M   _9  F  �9  '   �:  ]   ;    z;  +   �<  �  �<  <  �?  (   �@      �@     A  !   -A     OA     _A  +   oA  B   �A  /   �A  0   B  :   ?B  G   zB  L   �B     C   After upgrading to a newer version, it might be necessary to update existing configuration files and add, remove, or modify some values. Refer to section :ref:`configure-effektif` and make sure your Workflow Accelerator configuration file is up-to-date before starting the system again. Backup MongoDB Backup the configuration files Backup the configuration files, see :ref:`update-backup-configuration` Before you can start with the update process you have to shutdown the Workflow Accelerator system. It is sufficient when you shutdown the Tomcat server Workflow Accelerator is running on. You don't have to shutdown the MongoDB server. If you installed the Workflow Accelerator Script Engine, you need to stop it as well. Refer to chapter :ref:`stopping` for information on how to stop Workflow Accelerator. Check the configuration files again, see :ref:`update-revisit-configuration` Copy the configuration file ``configuration.onpremise.js`` you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$SCRIPT_ENGINE_HOME``. Copy the configuration files you have backed up in subsection :ref:`update-backup-configuration` back into the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Copy the content of the directory ``$WORKFLOW_HOME/nodejs`` to your ``$SCRIPT_ENGINE_HOME`` directory. Copy the directory ``$WORKFLOW_HOME/webapps/ROOT`` to ``$TOMCAT_HOME/webapps``\ . Delete all files in the directory ``$SCRIPT_ENGINE_HOME``. Delete the directory ``$TOMCAT_HOME/webapps/ROOT`` completely. During the first setup you have modified some configuration files and added the Workflow Accelerator license file. In order to preserve those changes, you have to copy those files to another location before updating the Workflow Accelerator system. You can find those files in the directory ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . During the first startup the Workflow Accelerator system will migrate the database if there are any outstanding schema changes. Therefore, the startup might take a short while depending on the size of your database. If the system doesn't become available again within minutes, please check the Workflow Accelerator log file for any new error reports. First, check :ref:`update-notes` for additional information about the update to the latest version of Workflow Accelerator before continuing. If you have been provided with a new ``license.xml``\ , copy the file into ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` and replace the existing file. Otherwise, you can keep on using the old ``license.xml``\ . If you have installed the Workflow Accelerator Script Engine, you need to update the content of the ``$SCRIPT_ENGINE_HOME`` directory with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/nodejs``\ . If you installed the Workflow Accelerator Script Engine, you modified the configuration file ``configuration.onpremise.js`` of the script engine as well. You can find the configuration file directly within the ``$SCRIPT_ENGINE_HOME`` directory. Please copy it as well to another location before you go on. In case of exceptional problems you might want to restore an older version of Workflow Accelerator. Be aware, if you revert Workflow Accelerator to an older version, it is not guaranteed that you can keep on using your current database. The upgrade to a newer version can involve schema changes that render the database incompatible with older versions of Workflow Accelerator. In this situation, the Workflow Accelerator system will not start if it detects a newer version of the database schema which it doesn't support. This is the reason why you should create a backup before updating the system. In order to restore an older version, you can follow the instructions in this chapter again. However, instead of creating a backup you should restore an older backup. In order to update the Workflow Accelerator system, you have to replace the ``ROOT`` folder in ``$TOMCAT_HOME/webapps`` with the newer version you can find in the extracted directory ``$WORKFLOW_HOME/webapps``\ . Install a new version Install the older version of the script engine in ``$SCRIPT_ENGINE_HOME``, see :ref:`update-install-version` Install the older version of the webapp in ``$TOMCAT_HOME/webapps``\ , see :ref:`update-install-version` Now, the Workflow Accelerator system should be running with the older version again. On Linux systems you need to make the scripts executable with the ``chmod`` command like this: :: ROOT - this directory contains the web application Restore an earlier back up that was taken while the old Workflow Accelerator version was deployed. See chapter :ref:`restore` for more information on how to restore a backup. Restore an older version Revisit the configuration files Simply copy the files mentioned above to another location, e.g. ``$TOMCAT_HOME/webapps``\ . Start Workflow Accelerator Start the Workflow Accelerator system, see :ref:`starting-effektif` Stop Workflow Accelerator Stop the Workflow Accelerator system, see :ref:`update-stop-effektif` This section will guide you through an update of your Workflow Accelerator system. It assumes you have successfully installed an early version of Workflow Accelerator. If you are installing Workflow Accelerator for the first time, you can skip this chapter. Unpack Signavio Workflow Accelerator Unpack the older version of Workflow Accelerator, see :ref:`update-unpack-effektif` Unzip the signavio-workflow-{version}.zip to a directory of your choice, e.g. ``/yourlocation/signavio-workflow-{version}`` In the rest of this guide, we'll refer to the Workflow Accelerator home directory as ``$WORKFLOW_HOME``\ . The directory will contain the following files: Updating Signavio Workflow Accelerator Updating Workflow Accelerator to a newer version might involve changes in the database schema. Therefore, you are requested to backup the database before you go on. See chapter :ref:`backup` for more information on how to create a backup. Furthermore, the backup is necessary in case you have to revert Workflow Accelerator to an older version, because changes of the database schema are in general not backward compatible. This means you cannot run an older version of Workflow Accelerator with a database that was already migrated to a newer version. When you have successfully installed the new Workflow Accelerator version and verified that the configuration files are up-to-date, you can restart the Workflow Accelerator system. Refer to chapter :ref:`starting-effektif` for more information on how to start Workflow Accelerator. Workflow Accelerator configuration file Workflow Accelerator license file \*.sh - Linux shell scripts ``effektif-onpremise.properties`` ``license.xml`` ``logback.xml`` configuration file for Workflow Accelerator logs db - directory that contains MongoDB configuration files mongod.cfg - configuration file for Windows mongod.conf - configuration file for Linux optional - directory that contains optional resources script-engine - directory that contains the script engine spnego - directory that contains resources to setup SSO with SPNEGO webapps - directory Project-Id-Version: Effektif adminstrators guide 2.16
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-20 16:23+0200
PO-Revision-Date: 2017-04-21 11:19+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: de
Language-Team: Effektif <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 Wenn das System auf eine neuere Version gebracht wird, kann es notwendig sein, die existierenden Konfigurationsdateien erneut anzupassen und entsprechende Werte hinzuzufügen, anzupassen oder zu entfernen. Konsultieren Sie hierfür erneut Abschnitt :ref:`configure-effektif` und stellen Sie sicher, dass Ihre Workflow Accelerator-Konfiguration auf dem neuesten Stand ist bevor Sie das System wieder hochfahren. Backup MongoDB Sichern der Konfigurationsdateien Sichern Sie die Konfigurationsdateien, vgl. :ref:`update-backup-configuration` Bevor Sie mit der Aktualisierung des Workflow Accelerator-Systems starten können, müssen Sie zunächst das Workflow Accelerator-System herunterfahren. Es reicht aus, wenn Sie hierfür den Tomcat Server beenden, in welchem Workflow Accelerator ausgeführt wird. Den MongoDB Server müssen Sie für die Aktualisierung nicht beenden. Insofern Sie die Workflow Accelerator Script Engine installiert haben, müssen Sie diese auch stoppen. In Kapitel :ref:`stopping` finden Sie weitere Information darüber, wie Sie Workflow Accelerator stoppen. Überprüfen Sie die Konfigurationsdateien erneut, vgl. :ref:`update-revisit-configuration` Kopieren Sie die Konfigurationsdatei  ``configuration.onpremise.js``, die Sie in Abschnitt :ref:`update-backup-configuration` gesichert haben, zurück in das Verzeichnis ``$SCRIPT_ENGINE_HOME``\ . Kopieren Sie die Konfigurationsdateien, die Sie in Abschnitt :ref:`update-backup-configuration` gesichert haben, zurück in das Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Kopieren Sie den Inhalt des Verzeichnisses `$WORKFLOW_HOME/nodejs`` in Ihr ``$SCRIPT_ENGINE_HOME`` Verzeichnis. Kopieren Sie den Ordner ``$WORKFLOW_HOME/webapps/ROOT`` nach ``$TOMCAT_HOME/webapps``\ . Löschen Sie alle Dateien im Verzeichnis ``$SCRIPT_ENGINE_HOME``. Löschen Sie den Ordner ``$TOMCAT_HOME/webapps/ROOT`` vollständig. Während der initialen Installation haben Sie einige Konfigurationsdateien bearbeitet und die Workflow Accelerator-Lizenzdatei installiert. Um diese Änderungen nicht zu verlieren, müssen die entsprechenden Konfigurationsdateien sichern und dafür an eine andere Stelle kopieren bevor Sie das Workflow Accelerator-System aktualisieren. Sie finden die entsprechenden Dateien in dem Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Während der initialen Installation haben Sie einige Konfigurationsdateien bearbeitet und die Workflow Accelerator-Lizenzdatei installiert. Um diese Änderungen nicht zu verlieren, müssen die entsprechenden Konfigurationsdateien sichern und dafür an eine andere Stelle kopieren bevor Sie das Workflow Accelerator-System aktualisieren. Sie finden die entsprechenden Dateien in dem Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes``\ . Überprüfen Sie bitte zuerst ob :ref:`update-notes` weitere Hinweise zur Aktualisierung von Workflow Accelerator auf die neueste Version enthält, bevor Sie weiterlesen. Insofern Sie mit der Aktualisierung eine neue ``license.xml`` erhalten haben, kopieren Sie diese Datei in das Verzeichnis ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes`` und ersetzen die bestehende Datei. Sollten Sie keine neue ``license.xml`` erhalten haben, können Sie weiterhin die alte Datei verwenden. Wenn Sie die Workflow Accelerator Script Engine installiert haben, müssen Sie den Inhalt des Verzeichnis ``$SCRIPT_ENGINE_HOME`` durch die neuere Version in dem Verzeichnis  ``$WORKFLOW_HOME/nodejs`` ersetzen. Wenn Sie die Workflow Accelerator Script Engine installiert haben, dann haben Sie auch die Konfigurationsdatei der Script Engine ``configuration.onpremise.js`` angepasst. Sie finden die Konfigurationsdatei in dem Verzeichnis ``$SCRIPT_ENGINE_HOME``\ . Bitte kopieren Sie diese Datei auch an eine andere Stelle, bevor Sie fort fahren. Im Falle eines außergewöhnlichen Fehlers kann es notwendig sein, das System wieder auf eine ältere Version von Workflow Accelerator zurückzusetzen. Seien Sie sich bitte bewusst, dass es keine Garantie gibt, dass Sie eine ältere Version von Workflow Accelerator mit der aktuellen Datenbank betreiben können. Die Aktualisierung von Workflow Accelerator auf eine neuere Version kann Änderungen im Datenbankschema nach sich ziehen, die wiederum die Datenbank inkompatibel zu älteren Versionen von Workflow Accelerator machen. In diesen Situation wird das Workflow Accelerator-System nicht starten, wenn es eine neuere Datenbankversion als die vom System unterstützte Version erkennt. Aus diesem Grund sollten Sie vor jeder Aktualisierung ein Backup der Datenbank anlegen. Um eine ältere Version wieder herzustellen, können Sie wiederum den Anweisungen in diesem Kapitel folgen. Jedoch statt ein Backup anzulegen, müssen Sie nun ein zuvor erstelltes Backup wieder herstellen. Um das Workflow Accelerator-System zu aktualisieren, müssen Sie den Ordner ``ROOT`` im Verzeichnis ``$TOMCAT_HOME/webapps`` durch die neuere Version ersetzen, welche sich in dem entpackten Verzeichnis ``$WORKFLOW_HOME/webapps`` befindet. Eine neue Version installieren Installieren Sie die ältere Version der Script Engine in ``$SCRIPT_ENGINE_HOME``\ , vgl. :ref:`update-install-version` Installieren Sie die ältere Version der Webanwendung in ``$TOMCAT_HOME/webapps``\ , vgl. :ref:`update-install-version` Jetzt sollte das Workflow Accelerator-System wieder mit der alten Version laufen. Auf Linux-Systemen ist es notwendig, die Shell-Skripte ausführbar zu machen. Verwenden Sie hierfür den ``chmod``\ -Befehl, wie zum Beispiel: :: ROOT - Verzeichnis, das die Webanwendung enthält Stellen Sie nun ein Backup der Datenbank wieder her, welches erstellt wurde, während die alte Workflow Accelerator-Version installiert war. Im Kapitel :ref:`restore` finden Sie weitere Hinweise, wie Sie ein Backup wieder herstellen können. Eine ältere Version wieder herstellen Konfigurationsdateien anpassen Kopieren Sie einfach die oben genannten Dateien in ein anderes Verzeichnis, z. B. ``$TOMCAT_HOME/webapps``\ . Workflow Accelerator starten Starten Sie das Workflow Accelerator-System, vgl. :ref:`starting-effektif` Workflow Accelerator stoppen Stoppen Sie das Workflow Accelerator-System, vgl. :ref:`update-stop-effektif` Dieses Kapitel wird Sie schrittweise durch eine Aktualisierung Ihres Workflow Accelerator-Systems führen. Hierbei wird angenommen, dass Sie bereits eine ältere Version von Workflow Accelerator erfolgreich installiert haben. Wenn Sie Workflow Accelerator zum ersten Mal installieren, können Sie dieses Kapitel überspringen. Signavio Workflow Accelerator entpacken Entpacken Sie die ältere Version vonWorkflow Accelerator, vgl. :ref:`update-unpack-effektif` Entpacken Sie das Archiv signavio-workflow-{version}.zip in einem Verzeichnis Ihrer Wahl, zum Beispiel: ``/yourlocation/signavio-workflow-{version}`` Dieses Verzeichnis wird im weiteren Text als ``$WORKFLOW_HOME`` bezeichnet. Das Verzeichnis enthält die folgenden Dateien: Signavio Workflow Accelerator aktualisieren Während der Aktualisierung von Workflow Accelerator auf eine neuere Version kann es vorkommen, dass das Datenbankschema angepasst werden muss. Dementsprechend sollten Sie ein Backup der Datenbank anlegen, bevor Sie mit der Aktualisierung fortfahren. In Kapitel :ref:`backup` finden Sie mehr Informationen, wie Sie ein Backup mit MongoDB anlegen. Weiterhin ist das Backup notwendig für den Fall, dass Sie eine ältere Version von Workflow Accelerator wieder herstellen müssen, denn ein verändertes Datenbankschema ist im Allgemeinen nicht abwärtskompatibel. Das bedeutet, dass Sie keine ältere Version von Workflow Accelerator mit einer Datenbank betreiben können, die bereits auf ein neueres Schema migriert wurde. Sobald Sie die neue Version von Workflow Accelerator erfolgreich installiert und sichergestellt haben, dass die Konfiguration auf dem neuesten Stand ist, können Sie das Workflow Accelerator-System wieder starten. Kapitel :ref:`starting-effektif` gibt Ihnen weitere Information, wie Sie Workflow Accelerator starten. Workflow Accelerator-Konfigurationsdatei Workflow Accelerator-Lizenzdatei \*.sh - Linux Shellskripte  ``effektif-onpremise.properties`` ``license.xml`` ``logback.xml`` Konfiguration der Workflow Accelerator-Logs db – Verzeichnis, das die MongoDB Konfigurationsdateien enthält mongod.cfg - Konfigurationsdateien für Windows mongod.conf – Konfigurationsdateien für Linux optional – Verzeichnis, das optional Ressourcen enthält script-engine - Verzeichnis, das die Dateien der Script Engine enthält spnego - Verzeichnis, das die Dateien enthält um SSO mit SPNEGO aufzusetzen webapps - Verzeichnis 