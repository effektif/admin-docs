��    %      D  5   l      @     A     F     M     ]     d  	   j     t     �  �   �     l  �     G   R  >   �    �  �   �  �   �  e  :  �   �	  �   F
  �   �
  u  �  #  %  '   I     q  #   w     �     �     �  �  �     �     �     �     �     �     �       �       �     �     �     �     �  	   �     �       �        �  �     U   �  K   !  =  m  �   �  �   R  �  (    �  �   �  �   �  �  {  9    ?   R     �  #   �     �     �     �  �        �!     "     "      "     6"     K"     ^"     
   !            $                        	   #                  %                                                             "                                                     10.3 2.22.6 2.27.4 - 2.32.7 3.11.x 3.4.x 8.3 - 8.6 9.2.1 - 9.3 9.7 Activate the approval workflow feature within your Signavio workspace. Your Signavio Workflow organization will be setup automatically. For more information on how to activate the approval workflow, refer to Signavio's user manual. Compatibility list Defines the ID the Signavio Workflow system uses to identify itself to the Signavio system. Make sure to use ``com.effektif.oem`` to ensure the integration to work properly. This value is already preconfigured. Defines the URL under which your Signavio Workflow system is available. Defines the URL under which your Signavio system is available. Defines the mail of the system user that will access the Signavio Workflow system. Make sure to use ``system@signavio.com`` to ensure the integration to work properly. The value is already preconfigured. You do NOT have to create an account for this user in any of the systems. Defines the password of the system user. Remember this password, you will need to set the exact same password in the Signavio Workflow configuration file. Defines the password the Signavio Workflow system uses to identify itself to the Signavio system. Reuse the same password that you have set in the Signavio configuration file. Due to changes in the communication protocol, you are required to use a compatible version of the SPE in combination with your Signavio Workflow system. The following table shows the compatible versions of Signavio Workflow and SPE. You are free to update both systems in any order. Please ensure that nobody is working on the systems while you update them. Edit the Signavio Workflow configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/ effektif-onpremise.properties`` and add / update the following entries. :: Edit the Signavio configuration file ``ROOT/WEB-INF/classes/configuration.xml`` which can be found in the Tomcat that hosts the SPE system. :: If you add any of the following properties to the configuration file, make sure to add the required prefix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` in front of the property key: If you have purchased a standalone version of Signavio Workflow, you will be able to create an initial user and invite more users to Signavio Workflow. However, it is advised to create your Signavio Workflow organization by activating the approval workflow feature in the SPE. This way your SPE workspace and the Signavio Workflow organization will be linked automatically. In case you use the Signavio Workflow OEM version that is shipped with the SPE, the user management is handled by the SPE system. The SPE system will synchronise all users to Signavio Workflow. Within Signavio Workflow you will not be able to register any initial user nor invite more users. Make sure both systems are NOT running. Setup Signavio Process Editor integration Signavio Process Editor version Signavio Workflow version Start both systems. The Signavio Process Editor (SPE) integration with Signavio Workflow enables Signavio users to execute approval workflows for their process models using Signavio Workflow. In order to setup the integration properly, both systems, SPE and Signavio Workflow, have to be installed. For information about installing SPE refer to SPE's adminstration manual. In case both systems run on the same server, you need to set up two Tomcat instances. User management ``clientId`` ``clientSecret`` ``effektifServerUrl`` ``effektifUserName`` ``effektifUserPw`` ``serviceBaseUrl`` Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-29 16:03+0200
PO-Revision-Date: 2016-08-29 16:09+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
Language: de
X-Generator: Poedit 1.6.9
 10.3 2.22.6 2.27.4 - 2.32.7 3.11.x 3.4.x 8.3 - 8.6 9.2.1 - 9.3 9.7 Aktivieren Sie die Freigabe-Workflow-Funktion in Signavio, um Ihre Signavio Workflow-Organisation automatisch zu erstellen. Die Aktivierung der Freigabe-Workflow-Funktion wird im Signavio Nutzerhandbuch detailliert beschrieben. Kompatibilitätsliste Hier ist die ID hinterlegt, mit der sich Signavio Workflow im SPE identifiziert. Stellen Sie sicher, dass der Wert ``com.effektif.oem`` ist. Hierbei handelt es sich um einen vorkonfigurierten Wert. Tragen Sie die Server-URL ein, unter der Ihr Signavio Workflow-System erreichbar ist. Hinterlegen Sie hier die URL, unter der Ihr Signavio-System erreichbar ist. Hier wird die E-Mail-Adresse des Systemnutzers, der auf Signavio Workflow für den SPE zugreift, festgelegt. Stellen Sie sicher, dass der Wert hierfür ``system@signavio.com`` ist. Hierbei handelt es sich um den vorkonfigurierten Wert. Sie müssen für diesen Nutzer KEINEN Account in einem der beiden System anlegen. Tragen Sie hier das Passwort für den Systemnutzer ein. Wichtig: Genau dieses Passwort muss ebenfalls in die Signavio Workflow-Konfigurationsdatei eingetragen werden. Hier wird das Passwort des Signavio Workflow Systemnutzers im SPE System hinterlegt. Stellen Sie sicher, dass Sie exakt das Passwort verwenden, das Sie vorher in der Signavio-Konfigurationsdatei eingetragen haben. Aufgrund von Änderungen des Kommunikationsprotokolls, müssen Sie eine Version vom SPE verwenden, die kompatibel ist mit der Version Ihres Signavio Workflow-Systems. Die folgende Tabelle zeigt Ihnen eine Übersicht der kompatiblen Versionen von Signavio Workflow und SPE. Sie können die beiden Systeme in beliebiger Reihenfolge aktualisieren. Stellen Sie bitte sicher, dass beide Systeme während der Aktualisierung von niemandem genutzt werden. Bearbeiten Sie die Signavio Workflow-Konfigurationsdatei ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/ effektif-onpremise.properties`` (diese liegt natürlich im Signavio Workflow-Tomcat) und bearbeiten, beziehungsweise ergänzen Sie die folgenden Einträge: :: Bearbeiten Sie die Signavio-Konfigurationsdatei ``ROOT/WEB-INF/classes/configuration.xml``\ , die sich in dem Tomcat befindet, in dem das SPE System gehostet wird: :: Wenn Sie einen der folgenden Einträge in der Konfigurationsdatei anpassen, stellen Sie sicher, dass der benötigte Präfix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` vor dem Schlüssel steht. Falls Sie eine Standalone-Version von Signavio Workflow verwenden, können Sie den ersten Nutzer registrieren und weitere Nutzer einladen. Allerdings empfehlen wir, die erste Signavio Workflow-Organisation durch die Synchronisation mit dem SPE zu erstellen, indem Sie die Freigabe-Workflow-Funktion aktivieren. Hierdurch wird der SPE-Arbeitsbereich automatisch mit Ihrer Signavio Workflow-Organisation verbunden. Falls Sie die Signavio Workflow OEM Version verwenden, die Sie zusammen mit dem SPE erhalten haben, werden die Nutzer vom SPE System verwaltet. Das SPE System synchronisiert alle Nutzer mit Signavio Workflow. In Signavio Workflow selbst ist es in diesem Fall nicht möglich Nutzer einzuladen oder zu registrieren. Stellen Sie sicher, dass beide System NICHT ausgeführt werden. Setup Signavio Process Editor-Integration Signavio Process Editor-Version Signavio Workflow-Version Starten Sie beide Systeme. Durch die Integration mit dem Signavio Process Editor (SPE) können Signavio-Nutzer Freigabe-Workflows für Ihre Prozessmodelle in Signavio Workflow ausführen. Um die Integration zu gewährleisten, müssen selbstverständlich beide Systeme installiert worden sein. Die Installation vom Signavio Process Editor wird in einem eigenständigen Administrationshandbuch behandelt. Für den Fall, dass beide Systeme auf einem Server laufen, müssen Sie zwei Tomcat-Instanzen aufsetzen. Nutzerverwaltung ``clientId`` ``clientSecret`` ``effektifServerUrl`` ``effektifUserName`` ``effektifUserPw`` ``serviceBaseUrl`` 