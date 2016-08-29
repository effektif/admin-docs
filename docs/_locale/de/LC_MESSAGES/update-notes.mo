��    2      �              <  	   =  O   G  �   �  
   B  (   M  N   v  �   �  �   O  I   C  �   �  �  G  �  	  �  �
  �   �  �   k  !  �  D     @   d  x   �  <       [  �   n     )  #   I  9   m  h   �  _    �   p  A   )      k  (   �  $   �     �     �               2     C  "   \  N     �  �  �   �  F   E  t   �  �     �   �  �     o   �  {     �  �  	   S!  _   ]!  �   �!  
   y"  +   �"  j   �"  �   #    �#  d   �$  �   M%  L  7&  <  �(  �  �*  �   �,  �   �-  6  .  T   S/  W   �/  �    0  G   �0  �  �0  �   �4  %   m5  .   �5  7   �5  v   �5  �  q6  �   L9  ^   G:  0   �:  8   �:  0   ;     A;  +   Y;     �;     �;     �;     �;  (   �;  e   <  I  ~<  �   �>  M   �?  ~   �?  �   N@  �   �@  �   fA  o   �A  {   nB   *Debian:* *Debian:* Use your package manager and uninstall the package ``mongodb-10gen``. *Windows only:* manually remove the created MongoDB service by executing ``$MONGO_HOME\bin\mongod.exe --remove`` with administrator privileges on the command line ``cmd`` *Windows:* *Windows:* Delete the MongoDB directory. :ref:`install-mongodb` contains more information on how to setup MongoDB 3.2.x As mentioned before, the update to version 3.4 changes the data schema. Create a backup of your database before updating the application. Be aware, the update to Effektif 3.4 contains multiple changes in the underlying data schema which require several long running migrations. Depending on the size of your database, the migrations might take several seconds, or up to 20 minutes. Create a backup of your database using ``mongodump`` - see :ref:`backup`. Data migrations might take from several seconds up to several minutes. These migrations are executed when the server starts, so the first start of Effektif might take longer than usual. Effektif 3.4 now supports the latest version of MongoDB (3.2.x) which comes with improved performance and functionality. The usual upgrade from MongoDB 2.4.x to 3.2.x (https://docs.mongodb.org/manual/release-notes/3.2-upgrade/) requires a stepwise approach, first upgrading from 2.4 to 2.6, then from 2.6 to 3.0 and at last from 3.0 to 3.2. Upgrading the database also changes the storage engine from the old MMAPv1 engine to the new WiredTiger engine. Effektif 3.4 requires several infrastructure changes. Starting with version 3.4, Effektif requires Java 8. We also recommended upgrading MongoDB to version 3.2.x, because of the increased performance and functionality. Effektif 3.4 will still support MongoDB 2.4.x, but later releases will assume that you are using MongoDB 3.2. Last but not least, Effektif 3.4 supports Apache Tomcat 7 and 8. For now, you can use either version, but we recommend the optional upgrade to Tomcat 8. Effektif has been renamed to Signavio Workflow. Along with this change, the colors of the default theme have changed as well. You may notice the name of the database and database user in the examples in this manual have been changed from ``effektif`` to ``signavio``. You don't need to change any of the names in your production environment. But keep in mind that you might have to adjust any examples in this manual to your actual naming. However, we will use a different approach to migrate your MongoDB 2.4.x to version 3.2.x. This approach will simply import a backup of MongoDB 2.4.x into a completely fresh setup of MongoDB 3.2.x. If you are using Effektif in combination with a Signavio system, you are required to update your Signavio sytem as well to version 9.7 or higher. If you update from a version prior to Effektif 3.4, please follow the instructions in the next section to update your Java, Tomcat and MongoDB version as well. You don't need to do an intermediate update to Effektif version 3.4 and can directly update to version 3.11 of Signavio Workflow. Install MongoDB 3.2.x and recreate the Effektif database user again. Note that the the MongoDB configuration file format has changed. Note: if you use Robomongo to access MongoDB, download the latest version in order to be able to connect to MongoDB 3.2. Restart Effektif and MongoDB - see :ref:`starting-effektif`. Restore the backup partially to your new MongoDB instance using ``mongorestore``. Your backup from step 1 should contain multiple folders, one for each database in the MongoDB instance. You only need to restore the two that contain Effektif’s data. Their default names are ``effektif`` and ``effektif-files``. You might have chosen a different name by defining another value for ``effektif.mongodb.database`` in your Effektif configuration file. The value there represents the name of the first database and the name of the second database is generated by adding ``-files``. You have to execute the restore command for both of the directories separately. The following lines show examples for the restore commands, assuming your MongoDB user and database are both called ``effektif``. See :ref:`update` for more information on how to update the Effektif application. After you have successfully updated Effektif, you can continue with the next section and update MongoDB. Start the new MongoDB instance. Stop MongoDB - see :ref:`stopping`. Stop the Tomcat application server - see :ref:`stopping`. The database name is specified by the ``--db`` parameter and also by the existing backup directory name. The last Effektif release 2.27.x is already compatible with Java 8 and Tomcat 8. Start by updating Java and Tomcat, because Effektif 3.4 will not run on Java 7. You can install Tomcat 8 next to an existing Tomcat 7, and then switch between the application servers. :ref:`install-tomcat` explains how to setup a Tomcat 8 server. After the successful setup, ensure none of the Tomcat servers is running. Then copy the ``$TOMCAT_HOME/webapps/ROOT`` directory from your Tomcat 7 to your Tomcat 8 directory and start the Tomcat 8 server. Now, you should be able to access the Effektif system again via a browser. This section contains important information about Signavio Workflow system updates. It lists changes to technical requirements for new versions and additional instructions for updates. Uninstall MongoDB 2.4.x, but ensure you don't delete your backup! Update Java to Java 8 (required) Update MongoDB to MongoDB 3.2 (required) Update Tomcat to Tomcat 8 (optional) Update notes Update the Effektif application Updating Effektif Updating Java and Tomcat Updating MongoDB Updating to Effektif 3.4 Updating to Signavio Workflow 3.11 When updating Effektif and your infrastructure, follow the following sequence: With the new version of Signavio Workflow you are now able to configure a Node.js server to execute script tasks in a workflow. Note, you only need to configure this component if your version of Signavio Workflow supports script tasks. In general, you can use script tasks only with a full version of Signavio Workflow and not as part of the Signavio Approval Workflow. Refer to :ref:`install-script-engine` for more information on how to setup the Signavio Workflow Script Engine. You can install the new version in the same place as the old one, please ensure the data directory of the new database is empty before you start it. You will later import this backup into a new MongoDB 3.2 installation. Your Effektif system has been updated successfully. You can now access the Effektif application again via a browser. ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif C:\path\to\dumps\effektif`` ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif-files C:\path\to\dumps\effektif-files`` ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` contains the current name and password of the Effektif database user ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif /path/to/dumps/effektif`` ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif-files /path/to/dumps/effektif-files`` Project-Id-Version: Effektif administrators guide 3.4
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-29 16:24+0200
PO-Revision-Date: 2016-08-29 16:28+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: de
Language-Team: Effektif Dev <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 *Debian:* *Debian:* Verwenden Sie Ihren Paketmanager und deinstallieren Sie das Paket ``mongodb-10gen`` . *Nur Windows:* Entfernen Sie manuell den erstellten MongoDB Service, indem Sie ``$MONGO_HOME\bin\mongod.exe --remove`` mit Administratorenrechten auf der Kommandozeile ``cmd`` ausführen. *Windows:* *Windows:* Löschen Sie den MongoDB Ordner. :ref:`install-mongodb` enthält weitere Informationen darüber, wie Sie MongoDB 3.2.x installieren können Wie bereits erwähnt, enthält die Aktualisierung auf Version 3.4 Änderungen am Datenschema. Legen Sie dementsprechend ein Backup Ihrer Datenbank an, bevor Sie die Anwendung aktualisieren. Bitte beachten Sie, die Aktualisierung auf Effektif 3.4 enthält mehrere Änderungen des verwendeten Datenschema, welche länger laufende Datenmigrationen erfordern. Abhängig von der Größe Ihrer Datenbank dauern die Migrationen mehrere Sekunden bis hin zu 20 Minuten. Erstellen Sie ein backup Ihrer Datenbank unter Verwendung von ``mongodump`` - siehe :ref:`backup` .  Datenmigration können mehrere Sekunden bis hin zu mehrere Minuten beanspruchen. Diese Migrationen werden ausgeführt sobald der Server gestartet wird. Dementsprechend kann der erste Start von Effektif länger als gewöhnlich dauern. Effektif 3.4 unterstützt nun die neueste Version von MongoDB (3.2.x), welche erhöhte Performance und Funktionalität bietet. Die gewöhnliche Aktualisierung von MongoDB 2.4.x auf 3.2.x (https://docs.mongodb.org/manual/release-notes/3.2-upgrade/) erfordert einen Ansatz in mehreren Schritten, mit einer ersten Aktualisierung von 2.4 auf 2.6, dann einer Aktualisierung von 2.6 auf 3.0 und abschließend der Aktualisierung von 3.0 auf 3.2. Während der Aktualisierung der Datenbank erfolgt auch eine Umstellung der Storage Engine von der alten MMAPv1 Engine auf die neue WiredTiger Engine. Effektif 3.4 erfordert einige Änderungen in der Infrastruktur. Beginnend mit Version 3.4 erfordert Effektif Java 8. Darüber hinaus empfehlen wir die Aktualisierung von MongoDB auf Version 3.2.x, aufgrund der erhöhten Performance und Funktionalität. Effektif 3.4 unterstützt weiterhin MongoDB 2.4.x, jedoch werden spätere Releases davon ausgehen, dass Sie MongoDB 3.2.x verwenden. Abschließend unterstützt Effektif 3.4 Version 7 und 8 vom Apache Tomcat. Momentan können Sie eine von beiden Versionen verwenden, wir empfehlen jedoch die Aktualisierung auf Tomcat 8. Effektif wurde umbenannt in Signavio Workflow. Als Teil dieser Änderungen wurden auch die Farben der Nutzeroberfläche angepasst. Evlt. wird Ihnen auffallen, dass sich die Namen für die Datenbank und den Datenbanknutzer in den Beispielen in diesem Handbuch von ``effektif`` zu ``signavio`` geändert haben. Sie müssen keinen der Namen in Ihrer Produktivumgebung ändern. Merken Sie sich jedoch, dass die Benennungen in den Beispielen von Ihren aktuellen Benennungen abweichen kann. Wir werden jedoch einen anderen Ansatz wählen Ihre MongoDB 2.4.x zur Version 3.2.x zu migrieren. Für diesen Ansatz werden Sie einfach ein Backup von MongoDB 2.4.x in eine komplett neu aufgesetzte Instanz von MongoDB 3.2.x importieren. Wenn Sie Effektif in Kombination mit Signavio verwenden, müssen Sie auch Ihr Signavio System auf Version 9.7 oder höher aktualisieren. Wenn Sie Ihr System von einer Version älter als 3.4 aktualisieren, folgen Sie bitte auch den Anweisungen im nächsten Abschnitt, um Java, Tomcat und MongoDB ebenfalls zu aktualisieren. Sie müssen die Anwendung jedoch nicht erst auf Version 3.4 aktualisieren, sondern können direkt Version 3.11 installieren. Installieren Sie MongoDB 3.2.x und legen Sie den Effektif Datenbanknutzer erneut an. Beachten Sie bitte, dass sich das Format der MongoDB Konfigurationsdatei geändert hat. Beachten Sie bitte, Sie müssen die neueste Version von Robomongo verwenden, um sich mit einer MongoDB 3.2 Instanz verbinden zu können. Starten Sie Effektif und MongoDB neu - siehe :ref:`starting-effektif` . Stellen Sie das Backup in der neuen MongoDB Instanz unter Verwendung von ``mongorestore`` wieder her. Ihr Backup aus Schritt 1 sollte mehrere Ordner enthalten, einen für jede Datenbank in der MongoDB Instanz. Sie müssen nur die zwei Datenbanken wiederherstellen, die die Effektif Daten enthalten. Ihre Standardnamen lauten ``effektif`` und ``effektif-files``\ . Eventuell haben Sie einen anderen Namen gewählt, indem Sie einen anderen Wert für ``effektif.mongodb.database`` in der Effektif Konfigurationsdatei festgelegt haben. Der Wert repräsentiert den Namen der ersten Datenbank. Der Name der zweiten Datenbank lässt sich daraus ableiten, indem ``-files`` ans Ende angefügt wird. Sie müssen die Wiederherstellungsbefehle für beide Ordner separat durchführen. Die folgenden Zeilen zeigen Beispiele für die Wiederherstellungsbefehle, ausgehend von der Vermutung, dass sowohl Ihr MongoDB Nutzer als auch Ihre Datenbank ``effektif`` heißen. :ref:`update` enthält weitere Informationen darüber, wie Sie die Effektif Anwendung aktualisieren. Nachdem Sie Effektif erfolgreich aktualisiert haben, können Sie mit dem nächsten Punkt fortfahren und MongoDB aktualisieren. Starten Sie die neue MongoDB Instanz. Stoppen Sie MongoDB - siehe :ref:`stopping` .  Stoppen Sie den Tomcat Server - siehe :ref:`stopping` . Der Datenbankname wird durch den Parameter ``--db``\ , sowie durch den existierenden Backup Ordnernamen, spezifiziert. Das letzte Effektif Release 2.27.x ist bereits kompatibel mit Java 8 und Tomcat 8. Beginnen Sie also damit, Java und Tomcat zu aktualisieren, denn Effektif 3.4 wird nicht mit Java 7 starten. Sie können Tomcat 8 zusätzlich zu einem bereits existierenden Tomcat 7 installieren und so zwischen den Applikationsservern wechseln. :ref:`install-tomcat` erklärt Ihnen, wie Sie den Tomcat 8 Server aufsetzen. Nach dem erfolgreichen Setup, stellen Sie bitte sicher, dass keiner der Tomcat Server ausgeführt wird. Kopieren Sie anschließend den Ordner ``$TOMCAT_HOME/webapps/ROOT`` von Ihrem Tomcat 7 zu Ihrem Tomcat 8 Verzeichnis und starten Sie den Tomcat 8 Server. Sie sollten nun Effektif wieder über einen Browser öffnen können. Dieser Abschnitt enthält wichtige Information für Signavio Workflow Systemaktualisierungen. Es werden sowohl Änderungen hinsichtlich technischer Voraussetzungen aufgelistet als auch zusätzliche Anweisungen für die Aktualisierung bereit gestellt. Deinstallieren Sie MongoDB 2.4.x, aber stellen Sie sicher, dass Sie Ihr Backup nicht löschen! Aktualisieren Sie Java auf Java 8 (erforderlich) Aktualisieren Sie MongoDB auf MongoDB 3.2 (erforderlich) Aktualisieren Sie Tomcat auf Tomcat 8 (optional) Aktualisierungshinweise Aktualisieren Sie die Effektif Webanwendung Effektif aktualisieren Java und Tomcat aktualisieren MongoDB aktualisieren Auf Effektif 3.4 aktualisieren Auf Signavio Workflow 3.11 aktualisieren Wenn Sie Effektif und Ihre Infrastruktur aktualisieren, gehen Sie bitte in folgender Reihenfolge vor: Die neue Version von Signavio Workflow bietet nun die Möglichkeit einen Node.js Server zu konfigurieren um JavaScript-Tasks in einem Workflow auszuführen. Beachten Sie, dass Sie diese Komponente nur konfigurieren müssen, wenn Ihre Version von Signavio Workflow JavaScript-Tasks unterstützt. Im Allgemeinen können Sie die JavaScript-Tasks nur mit einer Vollversion von Signavio Workflow nutzen und nicht als Teil des Signavio Freigabe-Workflows. Abschnitt :ref:`install-script-engine` gibt Ihnen weitere Informationen, wie Sie die Signavio Workflow Script Engine aufsetzen müssen. Sie können die neue Version in das gleiche Verzeichnis wie zuvor installieren. Bitte stellen Sie sicher, dass das Datenverzeichnis der neuen Datenbank leer ist, bevor Sie sie starten. Sie werden dieses Backup später in die neue MongoDB 3.2 Instanz importieren. Ihr Effektif System wurde erfolgreich aktualisiert. Sie können nun die Effektif Anwendung wieder über einen Browser öffnen. ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif C:\path\to\dumps\effektif`` ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif-files C:\path\to\dumps\effektif-files`` ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` enthält den aktuellen Namen und das Passwort des Effektif Datenbanknutzers ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif /path/to/dumps/effektif`` ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif-files /path/to/dumps/effektif-files`` 