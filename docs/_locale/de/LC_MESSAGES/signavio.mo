��    +      t              �     �     �     �     �     �     �     �          	  	             %  �   )     "  �   5  E     J   X    �  �   �  �   Z      �   �	  �   &
  �   �
  �  �  L  >  '   �     �     �  $   �     �  �  
     �     
     '     4     E     [     p     �  K   �  1   �  �       �     �     �     �     �     �     �          	  	             %  �   )       �   4  R   	  X   \  L  �  �     �   �  �  �  �   v      �     �  �  f  �  ?   #!     c!     {!  $   �!     �!  �  �!     �#     �#     �#     �#     �#     �#     $     !$  B   4$  :   w$   10.15 10.3 10.8 2.22.6 2.27.4 - 2.32.7 3.11.x 3.15.x 3.22.x 3.4.x 8.3 - 8.6 9.2.1 - 9.3 9.7 Activate the approval workflow feature within your Process Manager workspace. Your Workflow Accelerator organization will be setup automatically. For more information on how to activate the approval workflow, refer to Process Manager's user manual. Compatibility list Defines the ID the Workflow Accelerator system uses to identify itself to the Process Manager system. Make sure to use ``com.effektif.oem`` to ensure the integration to work properly. This value is already preconfigured. Defines the URL under which your Process Manager system is available. Defines the URL under which your Workflow Accelerator system is available. Defines the mail of the system user that will access the Workflow Accelerator system. Make sure to use ``system@signavio.com`` to ensure the integration to work properly. The value is already preconfigured. You do NOT have to create an account for this user in any of the systems. Defines the password of the system user. Remember this password, you will need to set the exact same password in the Workflow Accelerator configuration file. Defines the password the Workflow Accelerator system uses to identify itself to the Process Manager system. Reuse the same password that you have set in the Process Manager configuration file. Due to changes in the communication protocol, you are required to use a compatible version of Process Manager in combination with your Workflow Accelerator system. The following table shows the compatible versions of Workflow Accelerator and Process Manager. You are free to update both systems in any order. Please ensure that nobody is working on the systems while you update them. Edit the Process Manager configuration file, which can be found in the Tomcat that hosts the Process Manager system at the following path: Edit the Workflow Accelerator configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` and add / update the following entries. :: If you add any of the following properties to the configuration file, make sure to add the required prefix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` in front of the property key: If you have purchased a standalone version of Workflow Accelerator, you will be able to create an initial user and invite more users to Workflow Accelerator. However, it is advised to create your Workflow Accelerator organization by activating the approval workflow feature in Process Manager. This way your Process Manager workspace and the Workflow Accelerator organization will be linked automatically. In case you use the Workflow Accelerator OEM version that is shipped with Process Manager, the user management is handled by the Process Manager system. The Process Manager system will synchronise all users to Workflow Accelerator. Within Workflow Accelerator you will not be able to register any initial user nor invite more users. Make sure both systems are NOT running. Process Manager version Setup Signavio Process Manager integration Start both systems. The Signavio Process Manager integration with Signavio Workflow Accelerator enables Process Manager users to execute approval workflows for their process models using Workflow Accelerator. In order to setup the integration properly, both systems, Process Manager and Workflow Accelerator, have to be installed. For information about installing Process Manager refer to Process Managers's adminstration manual. In case both systems run on the same server, you need to set up two Tomcat instances. User management Workflow Accelerator version ``clientId`` ``clientSecret`` ``effektifServerUrl`` ``effektifUserName`` ``effektifUserPw`` ``serviceBaseUrl`` version 9.3 and earlier: ``WEBAPPS/ROOT/WEB-INF/classes/configuration.xml`` version 9.7 and later: ``CONF/configuration.xml`` Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-07-17 14:22+0200
PO-Revision-Date: 2017-07-17 14:42+0200
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: de
Language-Team: Effektif <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 10.15 10.3 10.8 2.22.6 2.27.4 - 2.32.7 3.11.x 3.15.x 3.22.x 3.4.x 8.3 - 8.6 9.2.1 - 9.3 9.7 Aktivieren Sie die Freigabe-Workflow-Funktion im Process Manager, um Ihre Workflow Accelerator-Organisation automatisch zu erstellen. Die Aktivierung der Freigabe-Workflow-Funktion wird im Process Manager-Nutzerhandbuch detailliert beschrieben. Kompatibilitätsliste Hier ist die ID hinterlegt, mit der sich Workflow Accelerator im Process Manager identifiziert. Stellen Sie sicher, dass der Wert ``com.effektif.oem`` ist. Hierbei handelt es sich um einen vorkonfigurierten Wert. Hinterlegen Sie hier die URL, unter der Ihr Process Manager-System erreichbar ist. Tragen Sie die Server-URL ein, unter der Ihr Workflow Accelerator-System erreichbar ist. Hier wird die E-Mail-Adresse des Systemnutzers, der auf Workflow Accelerator für den Process Manager zugreift, festgelegt. Stellen Sie sicher, dass der Wert hierfür ``system@signavio.com`` ist. Hierbei handelt es sich um den vorkonfigurierten Wert. Sie müssen für diesen Nutzer KEINEN Account in einem der beiden System anlegen. Tragen Sie hier das Passwort für den Systemnutzer ein. Wichtig: Genau dieses Passwort muss ebenfalls in die Workflow Accelerator-Konfigurationsdatei eingetragen werden. Hier wird das Passwort des Workflow Accelerator-Systemnutzers im Process Manager-System hinterlegt. Stellen Sie sicher, dass Sie exakt das Passwort verwenden, das Sie vorher in der Process Manager-Konfigurationsdatei eingetragen haben. Aufgrund von Änderungen des Kommunikationsprotokolls, müssen Sie eine Version vom Process Manager verwenden, die kompatibel ist mit der Version Ihres Workflow Accelerator-Systems. Die folgende Tabelle zeigt Ihnen eine Übersicht der kompatiblen Versionen von Workflow Accelerator und Process Manager. Sie können die beiden Systeme in beliebiger Reihenfolge aktualisieren. Stellen Sie bitte sicher, dass beide Systeme während der Aktualisierung von niemandem genutzt werden. Bearbeiten Sie die Process Manager-Konfigurationsdatei, die sich in dem Tomcat, in dem das SPM System gehostet wird, unter dem folgenden Pfad befindet: Bearbeiten Sie die Workflow Accelerator-Konfigurationsdatei ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` (diese liegt natürlich im Workflow AcceleratorTomcat) und bearbeiten, beziehungsweise ergänzen Sie die folgenden Einträge: :: Wenn Sie einen der folgenden Einträge in der Konfigurationsdatei anpassen, stellen Sie sicher, dass der benötigte Präfix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` vor dem Schlüssel steht. Falls Sie eine Standalone-Version von Workflow Accelerator verwenden, können Sie den ersten Nutzer registrieren und weitere Nutzer einladen. Allerdings empfehlen wir, die erste Workflow Accelerator-Organisation durch die Synchronisation mit dem Process Manager zu erstellen, indem Sie die Freigabe-Workflow-Funktion aktivieren. Hierdurch wird der Process Manager-Arbeitsbereich automatisch mit Ihrer Workflow Accelerator-Organisation verbunden. Falls Sie die Workflow Accelerator OEM Version verwenden, die Sie zusammen mit dem Process Manager erhalten haben, werden die Nutzer vom Process Manager-System verwaltet. Das Process Manager-System synchronisiert alle Nutzer mit Workflow Accelerator. In Workflow Accelerator selbst ist es in diesem Fall nicht möglich Nutzer einzuladen oder zu registrieren. Stellen Sie sicher, dass beide System NICHT ausgeführt werden. Process Manager-Version Setup Signavio Process Manager-Integration Starten Sie beide Systeme. Durch die Integration mit dem Signavio Process Manager können Signavio-Nutzer Freigabe-Workflows für Ihre Prozessmodelle in Workflow Accelerator ausführen. Um die Integration zu gewährleisten, müssen selbstverständlich beide Systeme installiert worden sein. Die Installation vom Process Manager wird in einem eigenständigen Administrationshandbuch behandelt. Für den Fall, dass beide Systeme auf einem Server laufen, müssen Sie zwei Tomcat-Instanzen aufsetzen. Nutzerverwaltung Workflow Accelerator-Version ``clientId`` ``clientSecret`` ``effektifServerUrl`` ``effektifUserName`` ``effektifUserPw`` ``serviceBaseUrl`` bis einschließlich Version 9.3: ``WEBAPPS/ROOT/WEB-INF/classes/`` ab einschließlich Version 9.7: ``CONF/configuration.xml`` 