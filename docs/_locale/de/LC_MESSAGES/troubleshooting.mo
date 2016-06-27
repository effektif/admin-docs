��    )      d              �  �   �     A  A   Q  �   �  "   %  w   H  z   �  �   ;  �   +  �   �    �     �  6  �     
  Q   
  o   f
     �
     �
     �
  �   �
  	   �  Q   �    �      �     �   �  �   �  �   S  ,     �  >  *  �  b    �   u     
       9   !  |   [     �  F   �  �   8  �  �  w   N     �  A   �  �     +   �  �   �  �   x  �     �   �  �   �  8  �     �  W  �     6!  I   M!  �   �!     "     ""     0"  �   B"     �"  k   �"  �   V#    $  �   %  �   &  �   �&  �   �'  K   �(  �  �(    �*  �   �+  �   �,     o-     v-  @   �-  �   �-     L.  F   d.  �   �.   A double click on ``properties`` shows all entries. In case of an error you will see three entries, if everything is normal there will be only two. Common problems Debian: ``mongo admin -u signavio -p <yourSignavioUserPassword>`` Either the username / password combination that is used to execute the command is wrong or the respective MongoDB user lacks some required roles. Establish a connection to MongoDB. Executing a MongoDB command yields the error message ``errmsg: “unauthorized”`` or  ``errmsg: “auth fails”``\ . IMPORTANT: Only the entry for ``schema.lock`` must be deleted. You are advised to create a backup of the database upfront. If not configured otherwise, the log files of the Apache Tomcat application server can be found either in the installation directory of the Tomcat ``$TOMCAT_HOME\logs`` (Windows) or a common log directory e.g. ``/var/log/tomcat7`` (Linux). If this command fails with the error message ``exception: login failed`` you know that your username / password combination is wrong. Please, make sure you spelled the username and password correctly. If you are using Windows and followed the instructions in this guide to setup MongoDB, you should find the log file in your MongoDB installation directory ``$MONGO_HOME\logs``\ . In order to check the second issue, see the :ref:`add-mongodb-user` section. This section lists all necessary roles and explains how to verify that the Signavio Workflow user has all the required roles. Especially the restore and backup commands require certain roles to work properly. MongoDB On Linux, one default location where the log file can be found is ``/var/log/mongodb/mongodb.log``\ . Whereas default locations for the configuration file are ``/etc/mongodb.conf`` or ``/etc/mongod.conf``\ . These locations can change depending on the distribution and depend on how you have installed MongoDB. Open Robomongo. Open the content of the Signavio Workflow DB on the left side of the application. Out of the three entries in the list, select the one that contains the value ``schema.lock`` for the key ``k``. Problem: Script Engine Signavio Workflow Signavio Workflow does not start and the log file contains the error message ``INFO  LockingDbExecutor Database is locked by another executor. Wait...``. Solution: The :ref:`install-java` section explains how to install the correct Java version. The MongoDB log file is configured by the logpath option. This is either defined in the MongoDB configuration file that you reference when starting MongoDB or directly as a start parameter of MongoDB. Anyway, the value of this parameter will tell you where to find the log file. The Signavio Workflow Script Engine log files have been configured in the configuration file ``$SCRIPT_ENGINE_HOME/configuration.onpremise.js``. The values for the entries ``log`` ``file`` and ``log`` ``errorFile`` will tell you the name and location of the log files. The Signavio Workflow log file effektif.log can be found in the location you configured in the logging configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/logback.xml``\ . This file contains the line: :: The Signavio Workflow site shows a HTTP Status 500 error including the message ``com/effektif/EffektifServlet : Unsupported major.minor version 51.0 (unable to load class com.effektif.EffektifServlet)``\ . The Signavio Workflow site shows a HTTP Status 500 error including the message ``root cause java.lang.RuntimeException: Cannot find license.xml``\ . The Tomcat server is using the wrong Java version. Signavio Workflow requires Java 8. Make sure you have installed the correct Java version. You can check your Java version by executing: :: The first issue can be checked by executing: The problem with the LockingDbExecutor arises when the application server is shut down during the initialisation (update of licenses and migration of  database) before the lock can be released again. You have to manually remove the lock from the database. We recommend using a tool like Robomongo for this purpose. The :ref:`tooling-mongodb` section explains how to install Robomongo and set-up a connection to your MongoDB. The value contains the directory of the log file. Besides the ``effektif.log`` the directory contains more log files for every day of the past 30 days the server was running. If you are looking for any information about incidents on a specific date, open the log file with the respective timestamp. There are multiple different log files that yield information in case of an error scenario. The following subsections will assist you in finding the log files for every part of the Signavio Workflow application. The most important one, regarding the Signavio Workflow system is the ``effektif.log``\ . It will contain any application related log entries. This section lists some common problems that can arise during the setup of the Signavio Workflow system and gives instructions on how to solve them. Tomcat Troubleshooting Under Collections you will find the table ``properties``. Use a right click to open the context menu for the respective entry and choose „Delete Document…“ to remove the entry. Where are the log files? Windows: ``mongo.exe admin -u signavio -p <yourSignavioUserPassword>`` You have not installed the Signavio Workflow license.xml at all or placed it in the wrong directory. See :ref:`install-license` to solve the issue. Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-27 15:05+0200
PO-Revision-Date: 2016-05-03 19:32+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 Ein Doppelklick auf ``properties`` zeigt alle Einträge an. Im Fehlerfall sind es drei, im Normalfall sind es nur zwei. Häufige Fehler Debian: ``mongo admin -u signavio -p <yourSignavioUserPassword>`` Es ist  entweder die Nutzername/Passwort-Kombination des ausführenden MongoDB-Nutzers falsch, oder der ausführende Nutzer verfügt hat nicht die notwendigen Rollen inne. Stellen Sie eine Verbindung zu MongoDB her. Die Ausführung eines MongoDB-Befehls erzeugt den folgenden Fehler: ``errmsg: “unauthorized”`` or  ``errmsg: “auth fails”``\ . WICHTIG: Es darf nur der Eintrag für ``schema.lock`` gelöscht werden. Es ist außerdem ratsam vorher ein Backup der Datenbank zu erstellen. Falls nicht anders festgelegt, befinden sich die Logdateien des Tomcats unter Windows im Verzeichnis ``$TOMCAT_HOME\logs`` und unter Linux im gewohnten Logverzeichnis, zum Beispiel ``/var/log/tomcat7``\ . Falls dieser Befehl mit der Meldung ``exception: login failed`` fehlschlägt, wissen Sie, dass Ihre Nutzername/Passwort-Kombination nicht korrekt ist. Überprüfen Sie in diesem Fall die entsprechenden Daten noch einmal. Falls Sie Windows verwenden und den Anweisungen zur Installation von MongoDB in diesem Handbuch gefolgt sind, finden Sie die MongoDB-Logdateien im Ordner logs Ihres MongoDB-Installationsverzeichnisses, also unter ``$MONGO_HOME\logs``\ . Die zweite Fehlerursache können Sie überprüfen, indem Sie zum :ref:`add-mongodb-user` wechseln. Dieser Abschnitt listet alle notwendigen Rollen auf und erläutert wie Sie überprüfen können, ob der Nutzer die notwendigen Rollen innehat. Vor allem setzen Backup und Wiederherstellung bestimmte Rollen voraus. MongoDB Unter Linux ist der standardmäßige Pfad der Logdatei ``/var/log/mongodb/mongodb.log``\ . Hierbei ist der standardmäßige Pfad der Konfigurationsdatei ``/etc/mongodb.conf`` oder ``/etc/mongod.conf``\ . Berücksichtigen Sie, dass diese Pfade abhängig von Ihrer Linux-Distribution und Ihrem Installationsvorgang von MongoDB variieren können. Öffnen Sie Robomongo. Klappen Sie auf der linken Seite den Inhalt der Signavio Workflow DB auf. Aus den drei Einträgen in der Liste ist derjenige auszuwählen, der für den Schlüssel ``k`` den Wert ``schema.lock`` enthält. Problem: Script Engine Signavio Workflow Signavio Workflow startet nicht und die Logdatei enthält folgende Fehlermeldung: ``INFO  LockingDbExecutor Database is locked by another executor. Wait...``. Lösung: Abschnitt :ref:`install-java` gibt Ihnen genauere Hinweise, wie Sie die richtige Java-Version installieren. Der Pfad zur MongoDB-Logdatei ist über das Parameter logpath definiert. Diesen Parameter können Sie entweder beim Starten von MongoDB oder in der MongoDB-Konfigurationsdatei festlegen. The Signavio Workflow Script Engine log files have been configured in the configuration file ``$SCRIPT_ENGINE_HOME/configuration.onpremise.js``. The values for the entries ``log`` ``file`` and ``log`` ``errorFile`` will tell you the name and location of the log files. Die Signavio Workflow-Logdatei effektif.log kann in dem Verzeichnis gefunden werden, das Sie in der Konfigurationsdatei ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/logback.xml`` eingetragen haben. Die Konfigurationsdatei enthält den Eintrag: :: Die Signavio Workflow-Seite zeigt einen HTTP Status 500 Error mit der folgenden Fehlermeldung an: ``com/effektif/EffektifServlet : Unsupported major.minor version 51.0 (unable to load class com.effektif.EffektifServlet)``\ . Die Signavio Workflow-Seite zeigt einen HTTP Status 500 Error mit der folgenden Fehlermeldung an: ``root cause java.lang.RuntimeException: Cannot find license.xml``\ . Der Tomcat Server verwendet die falsche Java-Version. Signavio Workflow benötigt Java 8. Stellen Sie sicher, dass Sie die korrekte Java-Version installiert haben. Sie können Ihre Java-Version überprüfen, indem Sie den folgenden Befehl ausführen: :: Die erste Fehlerursache kann durch den folgenden Befehl überprüft werden: Das Problem mit dem LockingDbExecutor tritt dann auf, wenn der Server während der anfänglichen Initialisierung (Lizenzupdate oder Migration) beendet wurde, bevor der Lock wieder freigegeben wurde. Man muss nun den entsprechenden Lock manuell aus der Datenbank entfernen. Es wird empfohlen hierfür ein Programm wie Robomongo zu nutzen. Abschnitt :ref:`tooling-mongodb` beschreibt woher Robomongo bezogen werden kann und wie damit eine Verbindung zu MongoDB aufgebaut werden kann. Der Wert enthält das Logverzeichnis. Neben ``effektif.log`` enthält das Verzeichnis weitere Logfiles über die letzten 30 Tage, an denen der Server ausgeführt wurde. Sie können über die Zeitstempel der Logdateien bequem Informationen über einen bestimmten Tage einsehen. In Fallen von technischen Problemen können Sie verschiedene Logdateien einsehen. Der folgende Abschnitt erläutert, wo Sie die Logdateien finden. Die wichtigste Logdatei ist ``effektif.log``\ . Sie enthält alle Anwendungsbezogenen Logeinträge. In diesem Abschnitt sind häufige Fehler, die im Zuge der Betreibung von Signavio Workflow auftreten können, zusammen mit Lösungsansätzen aufgeführt: Tomcat Troubleshooting Unter Collections befindet sich dann die Tabelle ``properties``. Mit einem Rechtsklick auf den entsprechenden Eintrag und der Auswahl von „Delete Document…“ kann der Eintrag gelöscht werden. Wo sind die Logdateien? Windows: ``mongo.exe admin -u signavio -p <yourSignavioUserPassword>`` Sie haben die Signavio Workflow-Lizenzdatei license.xml nicht eingespielt oder an einen falschen Ort gelegt. Lesen Sie den Abschnitt :ref:`install-license` um das Problem zu beheben. 