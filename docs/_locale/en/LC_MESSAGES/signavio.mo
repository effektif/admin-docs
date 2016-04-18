��    #      4  /   L           	             	   &     0     <  �   @       �   2  >   �  >   ;    z  �   �  �     �   �  �   �  �   :	     �	  �   �	  W  �
      '   .     V     \     q     �  �  �     ,     <     I     Z     p     �     �  �  �     X     _     o  	   u          �  �   �     n  �   �  >   K  >   �    �  �   �  �   h  �     �   �  �   �       �   .  W      `  '   }     �     �     �     �  �  �     {     �     �     �     �     �     �                                                   !   #                                                    	                    "          
                     2.22.6 2.27.4 - 2.32.7 3.4.7 8.3 - 8.6 9.2.1 - 9.3 9.7 Activate the approval workflow feature within your Signavio workspace. Your Effektif organization will be setup automatically. For more information on how to activate the approval workflow, refer to Signavio's user manual. Compatibility list Defines the ID the Effektif system uses to identify itself to the Signavio system. Make sure to use ``com.effektif.oem`` to ensure the integration to work properly. This value is already preconfigured. Defines the URL under which your Effektif system is available. Defines the URL under which your Signavio system is available. Defines the mail of the system user that will access the Effektif system. Make sure to use ``system@signavio.com`` to ensure the integration to work properly. The value is already preconfigured. You do NOT have to create an account for this user in any of the systems. Defines the password of the system user. Remember this password, you will need to set the exact same password in the Effektif configuration file. Defines the password the Effektif system uses to identify itself to the Signavio system. Reuse the same password that you have set in the Signavio configuration file. Due to changes in the communication protocol, you are required to use a compatible version of Signavio in combination with your Effektif system. The following table shows the compatible versions of Effektif and Signavio. Edit the Effektif configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/ effektif-onpremise.properties`` and add / update the following entries. :: Edit the Signavio configuration file ``ROOT/WEB-INF/classes/configuration.xml`` which can be found in the Tomcat that hosts the Signavio system. :: Effektif version If you add any of the following properties to the configuration file, make sure to add the required prefix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` in front of the property key: If you have purchased a standalone version of Effektif, you will be able to create an initial user and invite more users to Effektif. However, it is advised to create your Effektif organization by activating the approval workflow feature in Signavio. This way your Signavio workspace and the Effektif organization will be linked automatically. In case you use the Effektif OEM version that is shipped with Signavio, the user management is handled by the Signavio system. The Signavio system will synchronise all Signavio users to Effektif. Within Effektif you will not be able to register any initial user nor invite more users. Make sure both systems are NOT running. Setup Signavio integration Signavio version Start both systems. The Signavio integration with Effektif enables Signavio users to execute approval workflows for their process models using Effektif. In order to setup the integration properly, both systems, Signavio and Effektif, have to be installed. For information about installing Signavio refer to Signavio's adminstration manual. In case both systems run on the same server, you need to set up two Tomcat instances. User management ``clientId`` ``clientSecret`` ``effektifServerUrl`` ``effektifUserName`` ``effektifUserPw`` ``serviceBaseUrl`` Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-31 11:18+0100
PO-Revision-Date: 2016-04-18 16:52+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
Language: en
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.6.9
X-Poedit-SourceCharset: UTF-8
 2.22.6 2.27.4 - 2.32.7 3.4.7 8.3 - 8.6 9.2.1 - 9.3 9.7 Activate the approval workflow feature within your Signavio workspace. Your Effektif organization will be setup automatically. For more information on how to activate the approval workflow, refer to Signavio's user manual. Compatibility list Defines the ID the Effektif system uses to identify itself to the Signavio system. Make sure to use ``com.effektif.oem`` to ensure the integration to work properly. This value is already preconfigured. Defines the URL under which your Effektif system is available. Defines the URL under which your Signavio system is available. Defines the mail of the system user that will access the Effektif system. Make sure to use ``system@signavio.com`` to ensure the integration to work properly. The value is already preconfigured. You do NOT have to create an account for this user in any of the systems. Defines the password of the system user. Remember this password, you will need to set the exact same password in the Effektif configuration file. Defines the password the Effektif system uses to identify itself to the Signavio system. Reuse the same password that you have set in the Signavio configuration file. Due to changes in the communication protocol, you are required to use a compatible version of Signavio in combination with your Effektif system. The following table shows the compatible versions of Effektif and Signavio. Edit the Effektif configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/ effektif-onpremise.properties`` and add / update the following entries. :: Edit the Signavio configuration file ``ROOT/WEB-INF/classes/configuration.xml`` which can be found in the Tomcat that hosts the Signavio system. :: Effektif version If you add any of the following properties to the configuration file, make sure to add the required prefix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` in front of the property key: If you have purchased a standalone version of Effektif, you will be able to create an initial user and invite more users to Effektif. However, it is advised to create your Effektif organization by activating the approval workflow feature in Signavio. This way your Signavio workspace and the Effektif organization will be linked automatically. In case you use the Effektif OEM version that is shipped with Signavio, the user management is handled by the Signavio system. The Signavio system will synchronise all Signavio users to Effektif. Within Effektif you will not be able to register any initial user nor invite more users. Make sure both systems are NOT running. Setup Signavio integration Signavio version Start both systems. The Signavio integration with Effektif enables Signavio users to execute approval workflows for their process models using Effektif. In order to setup the integration properly, both systems, Signavio and Effektif, have to be installed. For information about installing Signavio refer to Signavio's adminstration manual. In case both systems run on the same server, you need to set up two Tomcat instances. User management ``clientId`` ``clientSecret`` ``effektifServerUrl`` ``effektifUserName`` ``effektifUserPw`` ``serviceBaseUrl`` 