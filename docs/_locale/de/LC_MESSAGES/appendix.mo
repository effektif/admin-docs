��          �               l  �   m     ^    g  -   ~  5   �  �   �  3   �  i  �  �   @  D   +  <   p  M   �  D   �  9   @  P   z  �   �  j   \	  @  �	      r     �  �           w    ;   �  G   �  �     =   �  �  7  '  �  X     M   j  h   �  T   !  O   v  P   �  �     u   �  �  8  5  �  �   �   *Important: This methods works only if you execute Robomongo on the same system where your MongoDB server is already running. When authentication is turned on, MongoDB will only accept connections from localhost to create the initial user.* Appendix Because you created a new user, the connection to the MongoDB server now requires a user name and a password. Right click on the connection (in this case *localhost*) in the left panel and select the menu entry *Disconnect*\ . Afterwards, click on the icon for a new connection. Click on *Save* to create the new connection. Click on the link *Create* to setup a new connection. Go to the tab *Authentication* and activate the option *Perform authentication*\ . Then enter *User Name* (``effektif``) and the *Password* you have chosen before. Finally, click on *Save*\ . How to add the Effektif MongoDB user with Robomongo In the dialog enter the *Name* ``effektif`` and choose a password. Remember this password, you will have to fill it into the Effektif configuration file. Furthermore, select the four roles ``clusterAdmin``\ , ``readWriteAnyDatabase``\ , ``userAdminAnyDatabas``\ , and ``dbAdminAnyDatabase``\ . Eventually, click on *Save*\ . Your Effektif user has been created. In the dialog that opens up you can rename the connection. Do not change the address and leave ``localhost`` there. The method explained in this guide will only work when you execute Robomongo on the same server that runs the MongoDB. In the upper left corner click on the icon to open a new connection. Make sure your MongoDB server is running and open Robomongo. Right click on the folder *Users* and select the menu entry *Add Users…*\ . Select the connection you have created before and click on *edit*\ . Select the new item in the list and click on *Connect*\ . TODO: Update this chapter as soon as Robomongo supports the new user operations. The connection indicates now that it is using the configured user credentials. If you click on *Connect* now, your connection should work again. This chapter contains content to various topics which extend the descriptions in the administration guide. This section will show an alternative approach on how to create the Effektif database user in MongoDB instead of using the command line. For this approach we will use the free GUI application Robomongo to adminstrate MongoDB. See section :ref:`tooling-mongodb` for more information on Robomongo and where to download it. When you open the folders *System* > *admin* > *Users*\ , you will see the Effektif user, you have created before. If you select the user, do a right click and select the menu entry *Edit User*\ , you can verify the user was created with the four required roles. You will see the connection in the left panel. Open the folder *System* > *admin* and select the folder *Users*\ . Project-Id-Version: Effektif adminstrators guide 2.16
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-01-29 18:44+0100
PO-Revision-Date: 2016-03-08 18:44+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 *Wichtig: Diese Methode funktioniert nur, wenn Sie Robomongo auf dem gleichen System ausführen auf dem auch Ihr MongoDB-Server läuft. Sobald Authentifizierung aktiviert ist, akzeptiert MongoDB nur Verbindungen von localhost um den initialen Datenbanknutzer zu erstellen.* Anhang Da Sie einen neuen Nutzer angelegt haben, ist es nun notwendig, dass Sie für die Verbindung zum MongoDB-Server Nutzername und Passwort angeben. Machen Sie einen Rechtsklick auf die Verbindung (in diesem Fall *localhost*) auf der linken Seite der Anwendung und wählen Sie den Menüeintrag *Disconnect* aus. Klicken Sie anschließend auf das Symbol für eine neue Verbindung. Klicken Sie auf *Save* um die neue Verbindung zu erstellen. Klicken Sie auf den Link *Create* um eine neue Verbindung zu erstellen. Öffnen Sie den Tab *Authentication* und aktivieren Sie die Option *Perform authentication*\ . Tragen Sie nun die Werte für *User Name* (``effektif``) und *Password* (Ihr gewähltes Passwort) ein. Klicken Sie auf *Save*\ . Wie fügt man den Effektif MongoDB-Nutzer mit Robomongo hinzu Geben Sie in diesem Dialog für das Feld *Name* ``effektif`` ein und wählen Sie ein Passwort. Merken Sie sich dieses Passwort, Sie müssen es später in die Effektif Konfigurationsdatei eintragen. Wählen Sie zusätzlich die vier Rollen ``clusterAdmin``\ , ``readWriteAnyDatabase``\ , ``userAdminAnyDatabas``\ , und ``dbAdminAnyDatabase`` aus. Klicken Sie anschliessend auf *Save*\ . Ihr Effektif Datenbanknutzer wurde nun angelegt. In dem Dialog, der sich nun öffnet, können Sie die Verbindung umbenennen. Ändern Sie bitte nicht die Adresse und nutzen Sie den Wert ``localhost`` . Der hier beschriebene Ansatz funktioniert nur, wenn Robomongo auf dem gleichen System ausgeführt wird, auf dem auch der MongoDB-Server läuft. Klicken sie auf das Symbol in der oberen linken Ecke um eine neue Verbindung zu öffnen. Stellen Sie sicher, dass der MongoDB-Server läuft und öffnen Sie Robomongo. Machen Sie einen Rechtsklick auf den Ordner *Users* und wählen Sie den Menüeintrag *Add Users…* aus. Wählen Sie die Verbindung, die Sie angelegt haben aus und klicken Sie auf *edit*\ . Wählen Sie den neuen Eintrag in der Liste aus und klicken Sie auf *Connect*\ . TODO: Update this chapter as soon as Robomongo supports the new user operations. Die Verbindung zeigt Ihnen nun an, dass die konfigurierten Zugangsdaten genutzt werden. Wenn Sie jetzt auf *Connect* klicken, sollte Ihre Verbindung wieder funktionieren. Dieses Kapitel enthält Inhalt zu verschiedenen Theme, welche die Beschreibungen im Adminstratorenhandbuch vertiefen. Dieser Abschnitt wird einen alternativen Ansatz zeigen, wie man den Effektif Datenbanknutzer in MongoDB anlegen kann ohne die Kommandozeile zu verwenden. Für diesen Ansatz benötigen Sie die frei verfügbare, grafische Anwendung Robomongo um MongoDB zu verwalten. Kapitel :ref:`tooling-mongodb` liefert Ihnen mehr Informationen zu Robomongo und woher Sie die Anwendung beziehen können. Wenn Sie nun den Ordner *System* > *admin* > *Users* öffnen, sollten Sie den Effektif-Nutzer sehen, den Sie eben angelegt haben. Wenn Sie den Nutzer auswählen, einen Rechtsklick machen und den Menüeintrag *Edit User* auswählen, können Sie überprüfen, ob der Nutzer mit allen vier Rollen angelegt wurde. Nun sehen Sie die Verbindung auf der linken Seite der Anwendung. Öffnen Sie den Ordner *System* > *admin* und wählen Sie den Ordner *Users* aus. 