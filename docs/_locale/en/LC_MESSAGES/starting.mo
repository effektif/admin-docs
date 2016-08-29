��    G      T              �  �   �  �   2  !     +  ;  o   g  i   �  �   A  	   	    %	     A
     Y
    `
  �   }  R     L   S  ]   �  �   �    �  !  �  �       �  _  �  ;   J  �   �    /  u   4  �   �     :     M     h     p     �     �  P   �            Q   *  F   |  P   �  :       O     g  !   �     �  *   �  �   �  �   �  O  �  r  �     E   W  L   ]  �!     #  K   
#  �   V#  0   �#     ($  N   H$  1   �$  0   �$      �$  4   %  A   P%  ,   �%     �%     �%     �%     &     -&  O   =&  �  �&  �   (  �   �(  !   �)  +  �)  o   �*  i   Y+  �   �+  	   �,    �,     �-     �-    �-  �   �.  R  �/  L   �0  ]   "1  �   �1    [2  !  n3  �   �4    h5  _  l6  ;   �7  �   8    �8  u   �9  �   ,:     �:     �:     �:     �:     ;     ;  P   2;     �;     �;  Q   �;  F   �;  P   E<  :  �<     �=     �=  !   >     &>  *   @>  �   k>  �   ?  O  @  r  TA     �C  W  �C  ]  &E     �F  K   �F  �   �F  0   yG     �G  N   �G  1   H  0   KH      |H  4   �H  A   �H  ,   I     AI     UI     tI     �I     �I  O   �I   A user can be invited to multiple organisations. If a user is part of two organisations, he will require two user licenses, one for each organisation he is part of. After completing the installation as described above, both the MongoDB database and the Tomcat application server must be started for Signavio Workflow to run properly. This section will give you more details on how to start them. Apache Tomcat 7 or 8 is installed Assuming you installed Tomcat using the Windows service installer, you can open the Tomcat configuration dialog again by opening the Windows start menu and selecting ``Program Files\Apache Tomcat\Configure Tomcat``\ . The tab General contains respective buttons to start and stop the Tomcat service. Be aware, in earlier versions of MongoDB, e.g. 2.4.x, the scripts had a different name ``/etc/init.d/mongodb``. Before starting Signavio Workflow, use the following checklist to make sure everything is setup properly. Besides the manual invitation of every user, the enterprise version of Signavio Workflow offers the possibility to synchronise users and groups with Active Directory. See :ref:`synchronise-users` for more information. Checklist Click *Register a new account*, fill in your email address and click *Register a new user*\ . You will then receive an email with a link to complete your registration. After you have done that, your Signavio Workflow organisation is set up and you can go ahead and invite more users. Create the initial user Debian Every time a user registers using the register link on the login screen, a new organisation is created until the maximum amount is reached. In general, you will create one organisation and invite other users to join this organisation. The next subsection explains how to invite users. Furthermore, you can check upon the status of the Tomcat and determine whether it is running or not with the following command: :: Furthermore, you have the option to define the startup type of the service. By default, this should be “Manual” which means you have to start the Tomcat server manually each time the server restarts. You can change the type to “Automatic”. Then the Tomcat server will start automatically each time you restart your Windows server. If MongoDB is already running, you can restart the database by executing: :: If the system is integrated with the Signavio Process Editor check also the following points: If you followed the instructions in this guide and registered a service for MongoDB, you can simply start the MongoDB server by opening a command line with administrator privileges and execute the following command: :: If you followed the instructions in this guide to setup MongoDB using a packet manager, some additional scripts have been installed that allow you to start, stop and restart the database very easily. Be aware, the execution of those scripts might require root privileges. :: If you have finished the setup successfully, you can go on and start the Signavio Workflow application. You can use the checklist in the next subsection to verify you didn’t forget anything. The following subsection explains how to start Signavio Workflow on different operating systems. If you installed the script engine and setup an Init script, execute the respective start command for the Init script. Otherwise open a command line, navigate to the ``$SCRIPT_ENGINE_HOME`` directory and execute: :: If you installed the script engine and wrapped it into a service, you can open the ``services.msc``, locate the Signavio Script Engine service and start it there. Otherwise open a command line, navigate to the ``$SCRIPT_ENGINE_HOME`` directory and execute: :: If you purchased Signavio Workflow along with the Signavio Process Editor, you will see a login screen with one button. You can login to Signavio Workflow using your Signavio Process Editor account as soon as the Signavio Workflow users have been set up. Jump to section :ref:`signavio-user-management` for more information on how to set up the users. If your version includes the execution of JavaScript tasks: In case this is an integrated installation with the Signavio Process Editor, please jump to section :ref:`signavio-integration` for setting up synchronization of users. In case you purchased Signavio Workflow along with the Signavio Process Editor and want to setup the integration, you don't have to create the initial Signavio Workflow user manually. Please jump to section :ref:`signavio-user-management` for more information. In order to determine whether MongoDB is running or not, you can check upon the status with the following command: :: In order to register, enter the URL of your Signavio Workflow installation in your browser. You will see the login screen of Signavio Workflow. Invite other users Login to Signavio Workflow MongoDB MongoDB is configured MongoDB is installed Node.js is installed Note, you cannot close the command line as long as the script engine is running. Oracle Java 8 is installed Script Engine Signavio Process Editor is configured in the Signavio Workflow configuration file Signavio Workflow and Signavio Process Editor have compatible versions Signavio Workflow is configured in the Signavio Process Editor configuration.xml Signavio Workflow users are organized in organisations. There is a maximum amount of organisations that can be registered on an on-premise system. You will find the maximum number of available organisations in your license file. When the initial user registers, he will automatically create the first organisation. Start Signavio Workflow Starting Signavio Workflow The Signavio authorization dialog The Signavio login screen The default Signavio Workflow login screen The examples above show only the commands for Tomcat 8. However, if you use Tomcat 7, the same commands will work with the script ``/etc/init.d/tomcat7``\ . The recommended way to install Tomcat is to use a packet manager. Installing Tomcat under Debian with APT will install additional scripts to start, stop and restart the server. Be aware, the execution of those scripts might require root privileges. :: The registration also defined the startup type of the MongoDB service as “Automatic” which means it will start automatically if you restart the Windows system. Alternatively, you can manage the MongoDB service by opening the ``services.msc``\ . There, MongoDB will be listed among the other services and can be started and stopped. To invite other users, go to the organization configuration panel. That's located in the dropdown under your name in the top right corner named *Organization settings*\ . In section Invitations you can enter email addresses of users you want to invite. The amount of users that can be invited to your organisation depends on the number of user licenses you have acquired. All organisations on an on-premise system share the same license pool. This means the shown number of unused licenses is the same in every organisation. If one organisation invites another user the count of unused licenses in all organisations decreases. Tomcat When the Signavio Workflow system was started properly you can see the login screen by entering the URL of your Signavio Workflow installation in your browser. There are different versions of the login screen. If you purchased an Signavio Workflow standalone version, you will see a form that requires an email address and a password to login. When you click *Log in with Signavio account*\ , you will be redirected to the Signavio Process Editor and asked to authorize the access of Signavio Workflow. When you click on *Grant*\ , you will be redirected back to Signavio Workflow and automatically logged in. The authorization dialog is only shown the first time you use this method to login. Windows You can restart the Tomcat server if it is already running by executing: :: You have to be logged in to the Signavio Process Editor in order to see the authorization dialog. Otherwise, you will be redirected to the Collaboration Portal. a MongoDB user for Signavio Workflow was created the Java options are configured the Signavio Workflow ROOT folder was copied into the Tomcat webapps directory the Signavio Workflow Script Engine is configured the Signavio Workflow Script Engine is installed the Signavio Workflow URL is set the Signavio Workflow configuration file was updated the Signavio Workflow license was copied to the correct directory the Signavio Workflow log file is configured the base URL is set the database connection is set the log files are configured the mail configuration is set the port is set the script engine URL is configured in the Signavio Workflow configuration file Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-29 15:28+0200
PO-Revision-Date: 2016-08-29 15:37+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 A user can be invited to multiple organisations. If a user is part of two organisations, he will require two user licenses, one for each organisation he is part of. After completing the installation as described above, both the MongoDB database and the Tomcat application server must be started for Signavio Workflow to run properly. This section will give you more details on how to start them. Apache Tomcat 7 or 8 is installed Assuming you installed Tomcat using the Windows service installer, you can open the Tomcat configuration dialog again by opening the Windows start menu and selecting ``Program Files\Apache Tomcat\Configure Tomcat``\ . The tab General contains respective buttons to start and stop the Tomcat service. Be aware, in earlier versions of MongoDB, e.g. 2.4.x, the scripts had a different name ``/etc/init.d/mongodb``. Before starting Signavio Workflow, use the following checklist to make sure everything is setup properly. Besides the manual invitation of every user, the enterprise version of Signavio Workflow offers the possibility to synchronise users and groups with Active Directory. See :ref:`synchronise-users` for more information. Checklist Click *Register a new account*, fill in your email address and click *Register a new user*\ . You will then receive an email with a link to complete your registration. After you have done that, your Signavio Workflow organisation is set up and you can go ahead and invite more users. Create the initial user Debian Every time a user registers using the register link on the login screen, a new organisation is created until the maximum amount is reached. In general, you will create one organisation and invite other users to join this organisation. The next subsection explains how to invite users. Furthermore, you can check upon the status of the Tomcat and determine whether it is running or not with the following command: :: Furthermore, you have the option to define the startup type of the service. By default, this should be “Manual” which means you have to start the Tomcat server manually each time the server restarts. You can change the type to “Automatic”. Then the Tomcat server will start automatically each time you restart your Windows server. If MongoDB is already running, you can restart the database by executing: :: If the system is integrated with the Signavio Process Editor check also the following points: If you followed the instructions in this guide and registered a service for MongoDB, you can simply start the MongoDB server by opening a command line with administrator privileges and execute the following command: :: If you followed the instructions in this guide to setup MongoDB using a packet manager, some additional scripts have been installed that allow you to start, stop and restart the database very easily. Be aware, the execution of those scripts might require root privileges. :: If you have finished the setup successfully, you can go on and start the Signavio Workflow application. You can use the checklist in the next subsection to verify you didn’t forget anything. The following subsection explains how to start Signavio Workflow on different operating systems. If you installed the script engine and setup an Init script, execute the respective start command for the Init script. Otherwise open a command line, navigate to the ``$SCRIPT_ENGINE_HOME`` directory and execute: :: If you installed the script engine and wrapped it into a service, you can open the ``services.msc``, locate the Signavio Script Engine service and start it there. Otherwise open a command line, navigate to the ``$SCRIPT_ENGINE_HOME`` directory and execute: :: If you purchased Signavio Workflow along with the Signavio Process Editor, you will see a login screen with one button. You can login to Signavio Workflow using your Signavio Process Editor account as soon as the Signavio Workflow users have been set up. Jump to section :ref:`signavio-user-management` for more information on how to set up the users. If your version includes the execution of JavaScript tasks: In case this is an integrated installation with the Signavio Process Editor, please jump to section :ref:`signavio-integration` for setting up synchronization of users. In case you purchased Signavio Workflow along with the Signavio Process Editor and want to setup the integration, you don't have to create the initial Signavio Workflow user manually. Please jump to section :ref:`signavio-user-management` for more information. In order to determine whether MongoDB is running or not, you can check upon the status with the following command: :: In order to register, enter the URL of your Signavio Workflow installation in your browser. You will see the login screen of Signavio Workflow. Invite other users Login to Signavio Workflow MongoDB MongoDB is configured MongoDB is installed Node.js is installed Note, you cannot close the command line as long as the script engine is running. Oracle Java 8 is installed Script Engine Signavio Process Editor is configured in the Signavio Workflow configuration file Signavio Workflow and Signavio Process Editor have compatible versions Signavio Workflow is configured in the Signavio Process Editor configuration.xml Signavio Workflow users are organized in organisations. There is a maximum amount of organisations that can be registered on an on-premise system. You will find the maximum number of available organisations in your license file. When the initial user registers, he will automatically create the first organisation. Start Signavio Workflow Starting Signavio Workflow The Signavio authorization dialog The Signavio login screen The default Signavio Workflow login screen The examples above show only the commands for Tomcat 8. However, if you use Tomcat 7, the same commands will work with the script ``/etc/init.d/tomcat7``\ . The recommended way to install Tomcat is to use a packet manager. Installing Tomcat under Debian with APT will install additional scripts to start, stop and restart the server. Be aware, the execution of those scripts might require root privileges. :: The registration also defined the startup type of the MongoDB service as “Automatic” which means it will start automatically if you restart the Windows system. Alternatively, you can manage the MongoDB service by opening the ``services.msc``\ . There, MongoDB will be listed among the other services and can be started and stopped. To invite other users, go to the organization configuration panel. That's located in the dropdown under your name in the top right corner named *Organization settings*\ . In section Invitations you can enter email addresses of users you want to invite. The amount of users that can be invited to your organisation depends on the number of user licenses you have acquired. All organisations on an on-premise system share the same license pool. This means the shown number of unused licenses is the same in every organisation. If one organisation invites another user the count of unused licenses in all organisations decreases. Tomcat When the Signavio Workflow system was started properly you can see the login screen by entering the URL of your Signavio Workflow installation in your browser. There are different versions of the login screen. If you purchased an Signavio Workflow standalone version, you will see a form that requires an email address and a password to login. When you click *Log in with Signavio account*\ , you will be redirected to the Signavio Process Editor and asked to authorize the access of Signavio Workflow. When you click on *Grant*\ , you will be redirected back to Signavio Workflow and automatically logged in. The authorization dialog is only shown the first time you use this method to login. Windows You can restart the Tomcat server if it is already running by executing: :: You have to be logged in to the Signavio Process Editor in order to see the authorization dialog. Otherwise, you will be redirected to the Collaboration Portal. a MongoDB user for Signavio Workflow was created the Java options are configured the Signavio Workflow ROOT folder was copied into the Tomcat webapps directory the Signavio Workflow Script Engine is configured the Signavio Workflow Script Engine is installed the Signavio Workflow URL is set the Signavio Workflow configuration file was updated the Signavio Workflow license was copied to the correct directory the Signavio Workflow log file is configured the base URL is set the database connection is set the log files are configured the mail configuration is set the port is set the script engine URL is configured in the Signavio Workflow configuration file 