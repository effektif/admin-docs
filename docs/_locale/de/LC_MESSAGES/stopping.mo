��    
      l       �       �   #  �      �  �   �  �   �     u  \   }     �     �     �  �  �    �     �  �   �  �   �     V  �   ^     �     	     	   As already mentioned in the section :ref:`starting-effektif`\ , the Tomcat configuration dialog offers a simple way to stop the Tomcat server. Simply open the Windows start menu, select ``Program Files\Apache Tomcat\Configure Tomcat``\ , open the tab *General* and click the button *Stop*\ . Debian If you have registered MongoDB as a Windows service, you can stop the database in two ways. Either you open the command line with adminstrator privileges and execute: :: In order to stop the Effektif system completely, you have to stop the Tomcat application server and the MongoDB database. However, if you need to restart the Effektif system, it is sufficient to restart only the Tomcat server. MongoDB Or you run ``services.msc``\ , select MongoDB in the list of services and click on *Stop*\ . Stopping Effektif Tomcat Windows Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-31 11:18+0100
PO-Revision-Date: 2014-11-05 19:56+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.6.9
X-Poedit-SourceCharset: UTF-8
 Wie bereits im Abschnitt :ref:`starting-effektif` erwähnt, können Sie Tomcat über dessen Konfigurationsoberfläche stoppen. Öffnen Sie hierzu im Windows Startmenü ``Programme\Apache Tomcat\Configure Tomcat``\ , wechseln Sie zum Tab *General* klicken Sie auf *Stop*\ . Debian Falls Sie MongoDB wie empfohlen als Windows Service registriert haben, können Sie MongoDB entweder über  den folgenden Befehl auf der Kommandozeile (mit Administratorrechten) ausführen: :: Stoppen Sie sowohl Tomcat als auch MongoDB, um Effektif herunterzufahren. Falls Sie Effektif neu starten möchten - zum Beispiel im Zuge eines Updates – ist es jedoch ausreichend lediglich Tomcat neu zu starten. MongoDB Oder Sie öffnen ``services.msc``\ , wählen MongoDB in der Liste der Services aus und klicken auf die *Stopp*\ -Schaltfläche in den Diensteigenschaften. Effektif herunterfahren Tomcat Windows 