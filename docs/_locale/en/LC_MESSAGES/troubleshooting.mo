��    )      d              �  �   �     A  A   Q  �   �  "   %  w   H  z   �  �   ;  �   +  �   �    �     �  6  �     
  Q   
  o   f
     �
     �
     �
  �   �
  	   �  Q   �    �      �     �   �  �   �  �   S  ,     �  >  *  �  b    �   u     
       9   !  |   [     �  F   �  �   8  �  �  �   �       A   )  �   k  "   �  w      z   �  �     �     �   �         �  6  �     �   Q   �   o   >!     �!     �!     �!  �   �!  	   q"  Q   {"    �"    �#  �   �$  �   �%  �   �&  �   +'  ,   �'  �  (  *  �)  b  �*  �   M,     �,     �,  9   �,  |   3-     �-  F   �-  �   .   A double click on ``properties`` shows all entries. In case of an error you will see three entries, if everything is normal there will be only two. Common problems Debian: ``mongo admin -u signavio -p <yourSignavioUserPassword>`` Either the username / password combination that is used to execute the command is wrong or the respective MongoDB user lacks some required roles. Establish a connection to MongoDB. Executing a MongoDB command yields the error message ``errmsg: “unauthorized”`` or  ``errmsg: “auth fails”``\ . IMPORTANT: Only the entry for ``schema.lock`` must be deleted. You are advised to create a backup of the database upfront. If not configured otherwise, the log files of the Apache Tomcat application server can be found either in the installation directory of the Tomcat ``$TOMCAT_HOME\logs`` (Windows) or a common log directory e.g. ``/var/log/tomcat7`` (Linux). If this command fails with the error message ``exception: login failed`` you know that your username / password combination is wrong. Please, make sure you spelled the username and password correctly. If you are using Windows and followed the instructions in this guide to setup MongoDB, you should find the log file in your MongoDB installation directory ``$MONGO_HOME\logs``\ . In order to check the second issue, see the :ref:`add-mongodb-user` section. This section lists all necessary roles and explains how to verify that the Signavio Workflow user has all the required roles. Especially the restore and backup commands require certain roles to work properly. MongoDB On Linux, one default location where the log file can be found is ``/var/log/mongodb/mongodb.log``\ . Whereas default locations for the configuration file are ``/etc/mongodb.conf`` or ``/etc/mongod.conf``\ . These locations can change depending on the distribution and depend on how you have installed MongoDB. Open Robomongo. Open the content of the Signavio Workflow DB on the left side of the application. Out of the three entries in the list, select the one that contains the value ``schema.lock`` for the key ``k``. Problem: Script Engine Signavio Workflow Signavio Workflow does not start and the log file contains the error message ``INFO  LockingDbExecutor Database is locked by another executor. Wait...``. Solution: The :ref:`install-java` section explains how to install the correct Java version. The MongoDB log file is configured by the logpath option. This is either defined in the MongoDB configuration file that you reference when starting MongoDB or directly as a start parameter of MongoDB. Anyway, the value of this parameter will tell you where to find the log file. The Signavio Workflow Script Engine log files have been configured in the configuration file ``$SCRIPT_ENGINE_HOME/configuration.onpremise.js``. The values for the entries ``log`` ``file`` and ``log`` ``errorFile`` will tell you the name and location of the log files. The Signavio Workflow log file effektif.log can be found in the location you configured in the logging configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/logback.xml``\ . This file contains the line: :: The Signavio Workflow site shows a HTTP Status 500 error including the message ``com/effektif/EffektifServlet : Unsupported major.minor version 51.0 (unable to load class com.effektif.EffektifServlet)``\ . The Signavio Workflow site shows a HTTP Status 500 error including the message ``root cause java.lang.RuntimeException: Cannot find license.xml``\ . The Tomcat server is using the wrong Java version. Signavio Workflow requires Java 8. Make sure you have installed the correct Java version. You can check your Java version by executing: :: The first issue can be checked by executing: The problem with the LockingDbExecutor arises when the application server is shut down during the initialisation (update of licenses and migration of  database) before the lock can be released again. You have to manually remove the lock from the database. We recommend using a tool like Robomongo for this purpose. The :ref:`tooling-mongodb` section explains how to install Robomongo and set-up a connection to your MongoDB. The value contains the directory of the log file. Besides the ``effektif.log`` the directory contains more log files for every day of the past 30 days the server was running. If you are looking for any information about incidents on a specific date, open the log file with the respective timestamp. There are multiple different log files that yield information in case of an error scenario. The following subsections will assist you in finding the log files for every part of the Signavio Workflow application. The most important one, regarding the Signavio Workflow system is the ``effektif.log``\ . It will contain any application related log entries. This section lists some common problems that can arise during the setup of the Signavio Workflow system and gives instructions on how to solve them. Tomcat Troubleshooting Under Collections you will find the table ``properties``. Use a right click to open the context menu for the respective entry and choose „Delete Document…“ to remove the entry. Where are the log files? Windows: ``mongo.exe admin -u signavio -p <yourSignavioUserPassword>`` You have not installed the Signavio Workflow license.xml at all or placed it in the wrong directory. See :ref:`install-license` to solve the issue. Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-06-22 19:03+0200
PO-Revision-Date: 2016-06-27 13:11+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: en
Language-Team: Effektif <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 A double click on ``properties`` shows all entries. In case of an error you will see three entries, if everything is normal there will be only two. Common problems Debian: ``mongo admin -u signavio -p <yourSignavioUserPassword>`` Either the username / password combination that is used to execute the command is wrong or the respective MongoDB user lacks some required roles. Establish a connection to MongoDB. Executing a MongoDB command yields the error message ``errmsg: “unauthorized”`` or  ``errmsg: “auth fails”``\ . IMPORTANT: Only the entry for ``schema.lock`` must be deleted. You are advised to create a backup of the database upfront. If not configured otherwise, the log files of the Apache Tomcat application server can be found either in the installation directory of the Tomcat ``$TOMCAT_HOME\logs`` (Windows) or a common log directory e.g. ``/var/log/tomcat7`` (Linux). If this command fails with the error message ``exception: login failed`` you know that your username / password combination is wrong. Please, make sure you spelled the username and password correctly. If you are using Windows and followed the instructions in this guide to setup MongoDB, you should find the log file in your MongoDB installation directory ``$MONGO_HOME\logs``\ . In order to check the second issue, see the :ref:`add-mongodb-user` section. This section lists all necessary roles and explains how to verify that the Signavio Workflow user has all the required roles. Especially the restore and backup commands require certain roles to work properly. MongoDB On Linux, one default location where the log file can be found is ``/var/log/mongodb/mongodb.log``\ . Whereas default locations for the configuration file are ``/etc/mongodb.conf`` or ``/etc/mongod.conf``\ . These locations can change depending on the distribution and depend on how you have installed MongoDB. Open Robomongo. Open the content of the Signavio Workflow DB on the left side of the application. Out of the three entries in the list, select the one that contains the value ``schema.lock`` for the key ``k``. Problem: Script Engine Signavio Workflow Signavio Workflow does not start and the log file contains the error message ``INFO  LockingDbExecutor Database is locked by another executor. Wait...``. Solution: The :ref:`install-java` section explains how to install the correct Java version. The MongoDB log file is configured by the logpath option. This is either defined in the MongoDB configuration file that you reference when starting MongoDB or directly as a start parameter of MongoDB. Anyway, the value of this parameter will tell you where to find the log file. The Signavio Workflow Script Engine log files have been configured in the configuration file ``$SCRIPT_ENGINE_HOME/configuration.onpremise.js``. The values for the entries ``log`` ``file`` and ``log`` ``errorFile`` will tell you the name and location of the log files. The Signavio Workflow log file effektif.log can be found in the location you configured in the logging configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/logback.xml``\ . This file contains the line: :: The Signavio Workflow site shows a HTTP Status 500 error including the message ``com/effektif/EffektifServlet : Unsupported major.minor version 51.0 (unable to load class com.effektif.EffektifServlet)``\ . The Signavio Workflow site shows a HTTP Status 500 error including the message ``root cause java.lang.RuntimeException: Cannot find license.xml``\ . The Tomcat server is using the wrong Java version. Signavio Workflow requires Java 8. Make sure you have installed the correct Java version. You can check your Java version by executing: :: The first issue can be checked by executing: The problem with the LockingDbExecutor arises when the application server is shut down during the initialisation (update of licenses and migration of  database) before the lock can be released again. You have to manually remove the lock from the database. We recommend using a tool like Robomongo for this purpose. The :ref:`tooling-mongodb` section explains how to install Robomongo and set-up a connection to your MongoDB. The value contains the directory of the log file. Besides the ``effektif.log`` the directory contains more log files for every day of the past 30 days the server was running. If you are looking for any information about incidents on a specific date, open the log file with the respective timestamp. There are multiple different log files that yield information in case of an error scenario. The following subsections will assist you in finding the log files for every part of the Signavio Workflow application. The most important one, regarding the Signavio Workflow system is the ``effektif.log``\ . It will contain any application related log entries. This section lists some common problems that can arise during the setup of the Signavio Workflow system and gives instructions on how to solve them. Tomcat Troubleshooting Under Collections you will find the table ``properties``. Use a right click to open the context menu for the respective entry and choose „Delete Document…“ to remove the entry. Where are the log files? Windows: ``mongo.exe admin -u signavio -p <yourSignavioUserPassword>`` You have not installed the Signavio Workflow license.xml at all or placed it in the wrong directory. See :ref:`install-license` to solve the issue. 