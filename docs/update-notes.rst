
.. _update-notes:

Update notes
============
This section contains important information about Signavio Workflow system updates.
It lists changes to technical requirements for new versions and additional instructions for updates.

.. IMPORTANT::
	If you skip one or more versions of Signavio Workflow during the update, please read the update notes for the versions you are skipping as well. You should start with the oldest version which is newer than your currently running version of Signavio Workflow.

Updating to Signavio Workflow 3.15
----------------------------------
If you use Signavio Workflow in combination with the Signavio Process Editor, you must update the Signavio Process Editor to version 10.8.

If you update from a version prior to Signavio Workflow 3.11, please follow the instructions in the next sections version by version, starting with the oldest version to ensure a successful update.

Updating to Signavio Workflow 3.11
----------------------------------
Effektif has been renamed to Signavio Workflow. Along with this change, the colors of the default theme have changed as well. 
You may notice the name of the database and database user in the examples in this manual have been changed from ``effektif`` to ``signavio``. 
You don't need to change any of the names in your production environment. 
But keep in mind that you might have to adjust any examples in this manual to your actual naming.

With the new version of Signavio Workflow you are now able to configure a Node.js server to execute script tasks in a workflow. 
Note, you only need to configure this component if your version of Signavio Workflow supports script tasks. 
In general, you can use script tasks only with a full version of Signavio Workflow and not as part of the Signavio Approval Workflow. 
Refer to :ref:`install-script-engine` for more information on how to setup the Signavio Workflow Script Engine.

If you update from a version prior to Effektif 3.4, please follow the instructions in the next section to update your Java, Tomcat and MongoDB version as well. You don't need to do an intermediate update to Effektif version 3.4 and can directly update to version 3.11 of Signavio Workflow.

Updating to Effektif 3.4
------------------------
Effektif 3.4 requires several infrastructure changes.
Starting with version 3.4, Effektif requires Java 8.
We also recommended upgrading MongoDB to version 3.2.x, because of the increased performance and functionality.
Effektif 3.4 will still support MongoDB 2.4.x, but later releases will assume that you are using MongoDB 3.2.
Last but not least, Effektif 3.4 supports Apache Tomcat 7 and 8.
For now, you can use either version, but we recommend the optional upgrade to Tomcat 8.

If you are using Effektif in combination with a Signavio system, you are required to update your Signavio sytem as well to version 9.7 or higher. 

When updating Effektif and your infrastructure, follow the following sequence:

#. Update Java to Java 8 (required)
#. Update Tomcat to Tomcat 8 (optional)
#. Update the Effektif application
#. Update MongoDB to MongoDB 3.2 (required)

Be aware, the update to Effektif 3.4 contains multiple changes in the underlying data schema which require several long running migrations.
Depending on the size of your database, the migrations might take several seconds, or up to 20 minutes.

Updating Java and Tomcat
````````````````````````
The last Effektif release 2.27.x is already compatible with Java 8 and Tomcat 8.
Start by updating Java and Tomcat, because Effektif 3.4 will not run on Java 7.
You can install Tomcat 8 next to an existing Tomcat 7, and then switch between the application servers.
:ref:`install-tomcat` explains how to setup a Tomcat 8 server.
After the successful setup, ensure none of the Tomcat servers is running.
Then copy the ``$TOMCAT_HOME/webapps/ROOT`` directory from your Tomcat 7 to your Tomcat 8 directory and start the Tomcat 8 server.
Now, you should be able to access the Effektif system again via a browser. 

Updating Effektif
`````````````````
As mentioned before, the update to version 3.4 changes the data schema.
Create a backup of your database before updating the application.

Data migrations might take from several seconds up to several minutes.
These migrations are executed when the server starts, so the first start of Effektif might take longer than usual.

See :ref:`update` for more information on how to update the Effektif application.
After you have successfully updated Effektif, you can continue with the next section and update MongoDB.

Updating MongoDB 
````````````````
Effektif 3.4 now supports the latest version of MongoDB (3.2.x) which comes with improved performance and functionality. 
The usual upgrade from MongoDB 2.4.x to 3.2.x (https://docs.mongodb.org/manual/release-notes/3.2-upgrade/) requires a stepwise approach, first upgrading from 2.4 to 2.6, then from 2.6 to 3.0 and at last from 3.0 to 3.2.
Upgrading the database also changes the storage engine from the old MMAPv1 engine to the new WiredTiger engine.

However, we will use a different approach to migrate your MongoDB 2.4.x to version 3.2.x. This approach will simply import a backup of MongoDB 2.4.x into a completely fresh setup of MongoDB 3.2.x.

#. Stop the Tomcat application server - see :ref:`stopping`.
#. Create a backup of your database using ``mongodump`` - see :ref:`backup`.
	
	* You will later import this backup into a new MongoDB 3.2 installation.

#. Stop MongoDB - see :ref:`stopping`.
#. *Windows only:* manually remove the created MongoDB service by executing ``$MONGO_HOME\bin\mongod.exe --remove`` with administrator privileges on the command line ``cmd``
#. Uninstall MongoDB 2.4.x, but ensure you don't delete your backup!

	* *Windows:* Delete the MongoDB directory. 
	* *Debian:* Use your package manager and uninstall the package ``mongodb-10gen``.

#. Install MongoDB 3.2.x and recreate the Effektif database user again.
	
	* ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` contains the current name and password of the Effektif database user
	* You can install the new version in the same place as the old one, please ensure the data directory of the new database is empty before you start it.
	* Note that the the MongoDB configuration file format has changed.
	* :ref:`install-mongodb` contains more information on how to setup MongoDB 3.2.x

#. Start the new MongoDB instance. 
#. Restore the backup partially to your new MongoDB instance using ``mongorestore``. Your backup from step 1 should contain multiple folders, one for each database in the MongoDB instance. You only need to restore the two that contain Effektif’s data. Their default names are ``effektif`` and ``effektif-files``. You might have chosen a different name by defining another value for ``effektif.mongodb.database`` in your Effektif configuration file. The value there represents the name of the first database and the name of the second database is generated by adding ``-files``. You have to execute the restore command for both of the directories separately. The following lines show examples for the restore commands, assuming your MongoDB user and database are both called ``effektif``.
	
	* The database name is specified by the ``--db`` parameter and also by the existing backup directory name.
	* *Windows:* 

		* ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif C:\path\to\dumps\effektif``
		* ``$MONGO_HOME\bin\mongorestore.exe -u effektif -p <password> --authenticationDatabase admin --db effektif-files C:\path\to\dumps\effektif-files``

	* *Debian:*

		* ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif /path/to/dumps/effektif``
		* ``mongorestore -u effektif -p <password> --authenticationDatabase admin --db effektif-files /path/to/dumps/effektif-files``

#. Restart Effektif and MongoDB - see :ref:`starting-effektif`.

Your Effektif system has been updated successfully.
You can now access the Effektif application again via a browser. 

Note: if you use Robomongo to access MongoDB, download the latest version in order to be able to connect to MongoDB 3.2.
