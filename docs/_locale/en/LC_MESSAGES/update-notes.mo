��    K      t              �  	   �  O   �  �   '  �   �  
   �  (   �  N   �  �     q   �  �     I   	  �   X	  �  
  �  �  �  �  `   q     �     �  �     �   �    g  !  t  �   �  D   !     f  %   }  @   �  x   �     ]  2   q  6   �  @   �  <       Y  �   l  �   '     �  #     9   0  h   j  _  �  �   3  �   �  o  �  �   �   H   �!  A   "  �   ^"      �"  (   #  $   /#     T#     a#     �#     �#     �#     �#  "   �#  "   �#  N   $  �  k$  �   M&  �   0'  �   �'  �   G(  -   +)  F   Y)  t   �)  �   *  �   �*  �   -+  F   �+  o   ,  {   u,  �  �,  	   �.  O   �.  �   /  �   �/  
   |0  (   �0  N   �0  �   �0  q   �1  �   �1  I   �2  �   93  �  �3  �  �5  �  �7  `   R9     �9     �9  �   �9  �   �:    H;  !  U<  �   w=  D   >     G>  %   ^>  @   �>  x   �>     >?  2   R?  6   �?  @   �?  <   �?    :@  �   MC  �   D     �D  #   �D  9   E  h   KE  _  �E  �   H  �   �H  o  kI  �   �J  H   �K  A   �K  �   ?L      �L  (   �L  $   M     5M     BM     bM     tM     �M     �M  "   �M  "   �M  N   �M  �  LN  �   .P  �   Q  �   �Q  �   (R  -   S  F   :S  t   �S  �   �S  �   |T  �   U  F   �U  o   �U  {   VV   *Debian:* *Debian:* Use your package manager and uninstall the package ``mongodb-10gen``. *Windows only:* Open the command line ``cmd`` with administrative privileges and execute the following command. Make sure to use absolute paths and replace them with the matching paths on your system. *Windows only:* manually remove the created MongoDB service by executing ``$MONGO_HOME\bin\mongod.exe --remove`` with administrator privileges on the command line ``cmd`` *Windows:* *Windows:* Delete the MongoDB directory. :ref:`install-mongodb` contains more information on how to setup MongoDB 3.2.x As mentioned before, the update to version 3.4 changes the data schema. Create a backup of your database before updating the application. As well as upgrading the application, you should upgrade MongoDB. See the following section for more information. Be aware, the update to Effektif 3.4 contains multiple changes in the underlying data schema which require several long running migrations. Depending on the size of your database, the migrations might take several seconds, or up to 20 minutes. Create a backup of your database using ``mongodump`` - see :ref:`backup`. Data migrations might take from several seconds up to several minutes. These migrations are executed when the server starts, so the first start of Effektif might take longer than usual. Effektif 3.4 now supports the latest version of MongoDB (3.2.x) which comes with improved performance and functionality. The usual upgrade from MongoDB 2.4.x to 3.2.x (https://docs.mongodb.org/manual/release-notes/3.2-upgrade/) requires a stepwise approach, first upgrading from 2.4 to 2.6, then from 2.6 to 3.0 and at last from 3.0 to 3.2. Upgrading the database also changes the storage engine from the old MMAPv1 engine to the new WiredTiger engine. Effektif 3.4 requires several infrastructure changes. Starting with version 3.4, Effektif requires Java 8. We also recommended upgrading MongoDB to version 3.2.x, because of the increased performance and functionality. Effektif 3.4 will still support MongoDB 2.4.x, but later releases will assume that you are using MongoDB 3.2. Last but not least, Effektif 3.4 supports Apache Tomcat 7 and 8. For now, you can use either version, but we recommend the optional upgrade to Tomcat 8. Effektif has been renamed to Signavio Workflow. Along with this change, the colors of the default theme have changed as well. You may notice the name of the database and database user in the examples in this manual have been changed from ``effektif`` to ``signavio``. You don't need to change any of the names in your production environment. But keep in mind that you might have to adjust any examples in this manual to your actual naming. Enable new functionality for version 3.4 by executing the following command on the command line. Execute the following command: For example ``C:\MongoDB\bin`` However, we will use a different approach to migrate your MongoDB 2.4.x to version 3.2.x. This approach will simply import a backup of MongoDB 2.4.x into a completely fresh setup of MongoDB 3.2.x. If you are using Effektif in combination with a Signavio system, you are required to update your Signavio sytem as well to version 9.7 or higher. If you skip one or more versions of Workflow Accelerator during the update, please follow the update notes for the versions you are skipping as well. You should start with the oldest version which is newer than your currently installed version of Workflow Accelerator. If you update from a version prior to Effektif 3.4, please follow the instructions in the next section to update your Java, Tomcat and MongoDB version as well. You don't need to do an intermediate update to Effektif version 3.4 and can directly update to version 3.11 of Signavio Workflow. If you use Signavio Workflow in combination with the Signavio Process Editor, you must update the Signavio Process Editor to version 10.8. Install MongoDB 3.2.x and recreate the Effektif database user again. Install MongoDB 3.4.x. Navigate to the MongoDB bin directory Note that the the MongoDB configuration file format has changed. Note: if you use Robomongo to access MongoDB, download the latest version in order to be able to connect to MongoDB 3.2. Open a command line Open a command line with administrative privileges Replace ``<password>`` with your MongoDB user password Replace ``<username>`` with your MongoDB user, e.g. ``signavio`` Restart Effektif and MongoDB - see :ref:`starting-effektif`. Restore the backup partially to your new MongoDB instance using ``mongorestore``. Your backup from step 1 should contain multiple folders, one for each database in the MongoDB instance. You only need to restore the two that contain Effektif’s data. Their default names are ``effektif`` and ``effektif-files``. You might have chosen a different name by defining another value for ``effektif.mongodb.database`` in your Effektif configuration file. The value there represents the name of the first database and the name of the second database is generated by adding ``-files``. You have to execute the restore command for both of the directories separately. The following lines show examples for the restore commands, assuming your MongoDB user and database are both called ``effektif``. See :ref:`update` for more information on how to update the Effektif application. After you have successfully updated Effektif, you can continue with the next section and update MongoDB. Signavio Workflow has been renamed to Signavio Workflow Accelerator. If you use Workflow Accelerator in combination with Signavio Process Manager, you must update Process Manager to version 10.15. Start the new MongoDB instance. Stop MongoDB - see :ref:`stopping`. Stop the Tomcat application server - see :ref:`stopping`. The database name is specified by the ``--db`` parameter and also by the existing backup directory name. The last Effektif release 2.27.x is already compatible with Java 8 and Tomcat 8. Start by updating Java and Tomcat, because Effektif 3.4 will not run on Java 7. You can install Tomcat 8 next to an existing Tomcat 7, and then switch between the application servers. :ref:`install-tomcat` explains how to setup a Tomcat 8 server. After the successful setup, ensure none of the Tomcat servers is running. Then copy the ``$TOMCAT_HOME/webapps/ROOT`` directory from your Tomcat 7 to your Tomcat 8 directory and start the Tomcat 8 server. Now, you should be able to access the Effektif system again via a browser. The referenced configuration file is the one you have created previously for the old version of MongoDB and should still be in the same location. This section contains important information about Signavio Workflow Accelerator system updates. It lists changes to technical requirements for new versions and additional instructions for updates. To update Workflow Accelerator from a version prior to 3.11, you MUST first update the system to version 3.15 before you can update to version 3.22. Download `Signavio Workflow 3.15 <https://download.signavio.com/onpremise/latest/workflow/signavio-workflow-v3.15.11.zip>`_ and follow the respective previous update instructions, before you continue with this section. To update from a version prior to Signavio Workflow 3.11, first follow the instructions in the next sections version by version, starting with the oldest version which is higher than your currently installed version. To update your standalone MongoDB 3.2 to version 3.4 follow these steps: Uninstall MongoDB 2.4.x, but ensure you don't delete your backup! Uninstall MongoDB 3.2.x, but ensure you don't delete the data directory and configuration file of your database as well as the backup! Update Java to Java 8 (required) Update MongoDB to MongoDB 3.2 (required) Update Tomcat to Tomcat 8 (optional) Update notes Update the Effektif application Updating Effektif Updating Java and Tomcat Updating MongoDB Updating to Effektif 3.4 Updating to Signavio Workflow 3.11 Updating to Signavio Workflow 3.15 When updating Effektif and your infrastructure, follow the following sequence: With the new version of Signavio Workflow you are now able to configure a Node.js server to execute script tasks in a workflow. Note, you only need to configure this component if your version of Signavio Workflow supports script tasks. In general, you can use script tasks only with a full version of Signavio Workflow and not as part of the Signavio Approval Workflow. Refer to :ref:`install-script-engine` for more information on how to setup the Signavio Workflow Script Engine. Workflow Accelerator 3.22 now supports the latest version of MongoDB (3.4.x) which comes with improved performance and functionality. You should upgrade to MongoDB version 3.4, as Workflow Accelerator releases will require it. You can find a suitable version for your operating system in the MongoDB download center: https://www.mongodb.com/download-center You can install the new version in the same place as the old one, please ensure the data directory of the new database is empty before you start it. You can only update to MongoDB 3.4 if you are currently using version 3.2. The official MongoDB documentation contains for more information about the update: https://docs.mongodb.com/manual/release-notes/3.4-upgrade-standalone/ You finished the MongoDB update successfully. You will later import this backup into a new MongoDB 3.2 installation. Your Effektif system has been updated successfully. You can now access the Effektif application again via a browser. ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif C:\path\to\dumps\effektif`` ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif-files C:\path\to\dumps\effektif-files`` ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` contains the current name and password of the Effektif database user ``C:\MongoDB\bin\mongod.exe --config C:\MongoDB\mongod.cfg --install`` ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif /path/to/dumps/effektif`` ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif-files /path/to/dumps/effektif-files`` Project-Id-Version: Effektif administrators guide 3.4
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-25 18:58+0200
PO-Revision-Date: 2017-04-20 16:20+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: en
Language-Team: Effektif dev <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 *Debian:* *Debian:* Use your package manager and uninstall the package ``mongodb-10gen``. *Windows only:* Open the command line ``cmd`` with administrative privileges and execute the following command. Make sure to use absolute paths and replace them with the matching paths on your system. *Windows only:* manually remove the created MongoDB service by executing ``$MONGO_HOME\bin\mongod.exe --remove`` with administrator privileges on the command line ``cmd`` *Windows:* *Windows:* Delete the MongoDB directory. :ref:`install-mongodb` contains more information on how to setup MongoDB 3.2.x As mentioned before, the update to version 3.4 changes the data schema. Create a backup of your database before updating the application. As well as upgrading the application, you should upgrade MongoDB. See the following section for more information. Be aware, the update to Effektif 3.4 contains multiple changes in the underlying data schema which require several long running migrations. Depending on the size of your database, the migrations might take several seconds, or up to 20 minutes. Create a backup of your database using ``mongodump`` - see :ref:`backup`. Data migrations might take from several seconds up to several minutes. These migrations are executed when the server starts, so the first start of Effektif might take longer than usual. Effektif 3.4 now supports the latest version of MongoDB (3.2.x) which comes with improved performance and functionality. The usual upgrade from MongoDB 2.4.x to 3.2.x (https://docs.mongodb.org/manual/release-notes/3.2-upgrade/) requires a stepwise approach, first upgrading from 2.4 to 2.6, then from 2.6 to 3.0 and at last from 3.0 to 3.2. Upgrading the database also changes the storage engine from the old MMAPv1 engine to the new WiredTiger engine. Effektif 3.4 requires several infrastructure changes. Starting with version 3.4, Effektif requires Java 8. We also recommended upgrading MongoDB to version 3.2.x, because of the increased performance and functionality. Effektif 3.4 will still support MongoDB 2.4.x, but later releases will assume that you are using MongoDB 3.2. Last but not least, Effektif 3.4 supports Apache Tomcat 7 and 8. For now, you can use either version, but we recommend the optional upgrade to Tomcat 8. Effektif has been renamed to Signavio Workflow. Along with this change, the colors of the default theme have changed as well. You may notice the name of the database and database user in the examples in this manual have been changed from ``effektif`` to ``signavio``. You don't need to change any of the names in your production environment. But keep in mind that you might have to adjust any examples in this manual to your actual naming. Enable new functionality for version 3.4 by executing the following command on the command line. Execute the following command: For example ``C:\MongoDB\bin`` However, we will use a different approach to migrate your MongoDB 2.4.x to version 3.2.x. This approach will simply import a backup of MongoDB 2.4.x into a completely fresh setup of MongoDB 3.2.x. If you are using Effektif in combination with a Signavio system, you are required to update your Signavio sytem as well to version 9.7 or higher. If you skip one or more versions of Workflow Accelerator during the update, please follow the update notes for the versions you are skipping as well. You should start with the oldest version which is newer than your currently installed version of Workflow Accelerator. If you update from a version prior to Effektif 3.4, please follow the instructions in the next section to update your Java, Tomcat and MongoDB version as well. You don't need to do an intermediate update to Effektif version 3.4 and can directly update to version 3.11 of Signavio Workflow. If you use Signavio Workflow in combination with the Signavio Process Editor, you must update the Signavio Process Editor to version 10.8. Install MongoDB 3.2.x and recreate the Effektif database user again. Install MongoDB 3.4.x. Navigate to the MongoDB bin directory Note that the the MongoDB configuration file format has changed. Note: if you use Robomongo to access MongoDB, download the latest version in order to be able to connect to MongoDB 3.2. Open a command line Open a command line with administrative privileges Replace ``<password>`` with your MongoDB user password Replace ``<username>`` with your MongoDB user, e.g. ``signavio`` Restart Effektif and MongoDB - see :ref:`starting-effektif`. Restore the backup partially to your new MongoDB instance using ``mongorestore``. Your backup from step 1 should contain multiple folders, one for each database in the MongoDB instance. You only need to restore the two that contain Effektif’s data. Their default names are ``effektif`` and ``effektif-files``. You might have chosen a different name by defining another value for ``effektif.mongodb.database`` in your Effektif configuration file. The value there represents the name of the first database and the name of the second database is generated by adding ``-files``. You have to execute the restore command for both of the directories separately. The following lines show examples for the restore commands, assuming your MongoDB user and database are both called ``effektif``. See :ref:`update` for more information on how to update the Effektif application. After you have successfully updated Effektif, you can continue with the next section and update MongoDB. Signavio Workflow has been renamed to Signavio Workflow Accelerator. If you use Workflow Accelerator in combination with Signavio Process Manager, you must update Process Manager to version 10.15. Start the new MongoDB instance. Stop MongoDB - see :ref:`stopping`. Stop the Tomcat application server - see :ref:`stopping`. The database name is specified by the ``--db`` parameter and also by the existing backup directory name. The last Effektif release 2.27.x is already compatible with Java 8 and Tomcat 8. Start by updating Java and Tomcat, because Effektif 3.4 will not run on Java 7. You can install Tomcat 8 next to an existing Tomcat 7, and then switch between the application servers. :ref:`install-tomcat` explains how to setup a Tomcat 8 server. After the successful setup, ensure none of the Tomcat servers is running. Then copy the ``$TOMCAT_HOME/webapps/ROOT`` directory from your Tomcat 7 to your Tomcat 8 directory and start the Tomcat 8 server. Now, you should be able to access the Effektif system again via a browser. The referenced configuration file is the one you have created previously for the old version of MongoDB and should still be in the same location. This section contains important information about Signavio Workflow Accelerator system updates. It lists changes to technical requirements for new versions and additional instructions for updates. To update Workflow Accelerator from a version prior to 3.11, you MUST first update the system to version 3.15 before you can update to version 3.22. Download `Signavio Workflow 3.15 <https://download.signavio.com/onpremise/latest/workflow/signavio-workflow-v3.15.11.zip>`_ and follow the respective previous update instructions, before you continue with this section. To update from a version prior to Signavio Workflow 3.11, first follow the instructions in the next sections version by version, starting with the oldest version which is higher than your currently installed version. To update your standalone MongoDB 3.2 to version 3.4 follow these steps: Uninstall MongoDB 2.4.x, but ensure you don't delete your backup! Uninstall MongoDB 3.2.x, but ensure you don't delete the data directory and configuration file of your database as well as the backup! Update Java to Java 8 (required) Update MongoDB to MongoDB 3.2 (required) Update Tomcat to Tomcat 8 (optional) Update notes Update the Effektif application Updating Effektif Updating Java and Tomcat Updating MongoDB Updating to Effektif 3.4 Updating to Signavio Workflow 3.11 Updating to Signavio Workflow 3.15 When updating Effektif and your infrastructure, follow the following sequence: With the new version of Signavio Workflow you are now able to configure a Node.js server to execute script tasks in a workflow. Note, you only need to configure this component if your version of Signavio Workflow supports script tasks. In general, you can use script tasks only with a full version of Signavio Workflow and not as part of the Signavio Approval Workflow. Refer to :ref:`install-script-engine` for more information on how to setup the Signavio Workflow Script Engine. Workflow Accelerator 3.22 now supports the latest version of MongoDB (3.4.x) which comes with improved performance and functionality. You should upgrade to MongoDB version 3.4, as Workflow Accelerator releases will require it. You can find a suitable version for your operating system in the MongoDB download center: https://www.mongodb.com/download-center You can install the new version in the same place as the old one, please ensure the data directory of the new database is empty before you start it. You can only update to MongoDB 3.4 if you are currently using version 3.2. The official MongoDB documentation contains for more information about the update: https://docs.mongodb.com/manual/release-notes/3.4-upgrade-standalone/ You finished the MongoDB update successfully. You will later import this backup into a new MongoDB 3.2 installation. Your Effektif system has been updated successfully. You can now access the Effektif application again via a browser. ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif C:\path\to\dumps\effektif`` ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif-files C:\path\to\dumps\effektif-files`` ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` contains the current name and password of the Effektif database user ``C:\MongoDB\bin\mongod.exe --config C:\MongoDB\mongod.cfg --install`` ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif /path/to/dumps/effektif`` ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif-files /path/to/dumps/effektif-files`` 