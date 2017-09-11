��          �               \  #  ]     �  �   �  �   9  �   �  �   d    I  �   W    B  h   Y  �   �  
   �	     �	  \   �	     -
  &   ;
  �   b
     �
       �  
    �     �  �   �  �   �  �   U            -    J  o   g  �   �  
   �     �  �   �     w  ,   �  �   �     t     {   As already mentioned in the section :ref:`starting-effektif`\ , the Tomcat configuration dialog offers a simple way to stop the Tomcat server. Simply open the Windows start menu, select ``Program Files\Apache Tomcat\Configure Tomcat``\ , open the tab *General* and click the button *Stop*\ . Debian If MongoDB was setup following the instructions in this guide, you can simply stop the MongoDB server by executing the following command. This might require root privileges. :: If you have registered MongoDB as a Windows service, you can stop the database in two ways. Either you open the command line with adminstrator privileges and execute: :: If you installed Tomcat using a packet manager, you can simply run the following command. This might require root privileges. :: If you installed the mail relay and setup an Init script, execute the respective stop command for the Init script. If you are executing the mail relay directly via command line, simply abort the process by pressing ``CTRL + C``. If you installed the mail relay and wrapped it into a service, you can open the ``services.msc``, locate the Signavio Mail Relay service and stop it there. If you are executing the mail relay directly via command line, simply abort the process by pressing ``CTRL + C``. If you installed the script engine and setup an Init script, execute the respective stop command for the Init script. If you are executing the script engine directly via command line, simply abort the process by pressing ``CTRL + C``. If you installed the script engine and wrapped it into a service, you can open the ``services.msc``, locate the Signavio Script Engine service and stop it there. If you are executing the script engine directly via command line, simply abort the process by pressing ``CTRL + C``. In earlier versions of MongoDB, e.g. 2.4.x, the script had a different name: ``/etc/init.d/mongodb``. :: In order to stop the Workflow Accelerator system completely, you have to stop the Tomcat application server and the MongoDB database. However, if you need to restart the Workflow Accelerator system, it is sufficient to restart only the Tomcat server. Mail Relay MongoDB Or you run ``services.msc``\ , select MongoDB in the list of services and click on *Stop*\ . Script Engine Stopping Signavio Workflow Accelerator The example above shows only the command for Tomcat 8. However, if you use Tomcat 7, the same command will work with the ``/etc/init.d/tomcat7`` script. Tomcat Windows Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-03 19:10+0200
PO-Revision-Date: 2017-05-03 19:35+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: de
Language-Team: Effektif <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.0
 Wie bereits im Abschnitt :ref:`starting-effektif` erwähnt, können Sie Tomcat über dessen Konfigurationsoberfläche stoppen. Öffnen Sie hierzu im Windows Startmenü ``Programme\Apache Tomcat\Configure Tomcat``\ , wechseln Sie zum Tab *General* klicken Sie auf *Stop*\ . Debian Falls Sie MongoDB wie empfohlen über einen Paketmanager installiert haben, lässt sich das Programm wie folgt über die Kommandozeile stoppen - eventuell erfordert dies Root-Rechte: :: Falls Sie MongoDB wie empfohlen als Windows Service registriert haben, können Sie MongoDB entweder über  den folgenden Befehl auf der Kommandozeile (mit Administratorrechten) ausführen: :: Falls Sie Tomcat wie empfohlen über einen Paketmanager installiert haben, können Sie zum Stoppen den folgenden Befehl ausführen – eventuell erfordert dies Root-Rechte: :: Wenn Sie das Mail Relay installiert und ein Init-Skript aufgesetzt haben, stoppen Sie das Mail Relay mit dem entsprechenden Befehl für das Init-Skript. Wenn Sie das Mail Relay direkt auf der Kommandozeile ausführen, können Sie den Prozess einfach mit ``STRG + C`` stoppen. Wenn Sie das Mail Relay installiert und als Service registriert haben, können Sie ``services.msc`` öffnen und den Mail Relay-Service von dort stoppen. Wenn Sie das Mail Relay direkt auf der Kommandozeile ausführen, können Sie den Prozess einfach mit ``STRG + C`` stoppen. Wenn Sie die Script Engine installiert und ein Init-Skript aufgesetzt haben, stoppen Sie die Script Engine mit dem entsprechenden Befehl für das Init-Skript. Wenn Sie die Script Engine direkt auf der Kommandozeile ausführen, können Sie den Prozess einfach mit ``STRG + C`` stoppen. Wenn Sie die Script Engine installiert und als Service registriert haben, können Sie ``services.msc`` öffnen und den Script Engine Service von dort stoppen. Wenn Sie die Script Engine direkt auf der Kommandozeile ausführen, können Sie den Prozess einfach mit ``STRG + C`` stoppen. In früheren Version von MongoDB, z.B. 2.4.x, hatte das Skript einen anderen Namen: ``/etc/init.d/mongodb``. :: Stoppen Sie sowohl Tomcat als auch MongoDB, um Workflow Accelerator herunterzufahren. Falls Sie Workflow Accelerator neu starten möchten - zum Beispiel im Zuge eines Updates – ist es jedoch ausreichend lediglich den Tomcat neu zu starten. Mail Relay MongoDB Oder Sie öffnen ``services.msc``\ , wählen MongoDB in der Liste der Services aus und klicken auf die *Stopp*\ -Schaltfläche in den Diensteigenschaften. Script Engine Signavio Workflow Accelerator herunterfahren Die oben aufgeführten Beispiele zeigen nur die Kommandos für Tomcat 8. Wenn Sie jedoch Tomcat 7 verwenden, sollten die gleichen Kommandos mit dem Skript ``/etc/init.d/tomcat7`` funktionieren. Tomcat Windows 