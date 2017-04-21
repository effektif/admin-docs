��          |               �   �   �   �        C  �   J     �  �   �  ^   �  �   :     �  �   �  >   i  �  �  �   a    �     �  �   	     �	  �   �	  �   �
  �   s       �     >   �   As you can see, you have to fill in the credentials of the Workflow Accelerator MongoDB user again. Furthermore, you need to specify where the backup is located. Backups can be restored using MongoDB’s ``mongorestore`` tool. Like ``mongodump`` you run it on the command line. For more detailed information, see the official ``mongorestore`` documentation: Debian Replace the user credentials with the ones you have chosen during the setup and the directory with the one where you store your backups. Restoring backups The mongorestore.exe can be found in your MongoDB installation directory: ``$MONGO_HOME\bin\mongorestore.exe``\ . If you followed the instructions in this guide to setup the database, you can execute the following command on the command line: :: Using Debian, the command to restore a backup stored in /path/to/dump would look like this: :: We recommend running mongorestore with the parameter --drop which will remove every collection (table) from the database before it is restored. Windows You will need to use the Signavio Workflow Accelerator MongoDB user credentials again to overwrite the contents of the Workflow Accelerator databases. https://docs.mongodb.org/manual/reference/program/mongorestore Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-20 16:23+0200
PO-Revision-Date: 2017-04-20 18:02+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: de
Language-Team: Effektif <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 Sie müssen nun wieder die Zugangsdaten für den Workflow Accelerator-MongoDB-Nutzer, sowie den Speicherort der Backups angeben. Backups können über den MongoDB-Befehl ``mongorestore`` wiederhergestellt werden. ``mongorestore`` kann – vergleichbar zu ``mongodump`` – über die Kommandozeile ausgeführt werden. Weitere Informationen zu ``mongorestore`` können Sie der offiziellen Dokumentation entnehmen:  Debian Der Ort der MongoDB-Installation muss gegebenenfalls angepasst werden. Der Parameter –u beschreibt den Nutzernamen, der Parameter –p das Passwort. Passen Sie zudem den Pfad zu Ihrem Backup an. Backups wiederherstellen Die Datei mongorestore.exe kann im MongoDB Installationsverzeichnis, also unter ``$MONGO_HOME\bin\mongorestore.exe`` gefunden werden. Falls Sie der Installationsbeschreibung in diesem Handbuch gefolgt sind, lässt sich das Backup wie folgt einspielen: :: Unter Debian kann das Wiederherstellungskommando, um ein Backup aus dem Pfad /path/to/dump wieder herzustellen, wie folgt ausgeführt werden: :: Wir empfehlen mongorestore mit dem Paremeter --drop auszuführen, der alle Collections (Tabellen) aus der Datenbank entfernt, bevor die Wiederherstellung beginnt. Windows Zum Überschreiben des Inhalts der Signavio Workflow Accelerator-Datenbank benötigen Sie wieder die Nutzerdaten des Signavio Workflow MongoDB-Nutzers. https://docs.mongodb.org/manual/reference/program/mongorestore 