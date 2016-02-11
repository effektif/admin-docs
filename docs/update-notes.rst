Update notes
------------
This section contains important information for updates of your Effektif systems. It will list changed technical requirements for newer versions and additional instructions for updates.

Update to Effektif 3.4
``````````````````````
The official support for Tomcat 7 was dropped, however, Effektif 3.4 will still run in Tomcat 7. Furthermore, Effektif 3.4 now requires Java 8 and MongoDB 3.2. 
When updating Effektif and your infrastructure, you should follow the following sequence of actions:

#. Update Java to Java 8.
#. Update Tomcat to Tomcat 8
#. Update the Effektif application
#. Update MongoDB to MongoDB 3.2

Be aware, the update to version 3.4 contains multiple changes in the underlying data schema which require several long running migrations. Depending on the size of your database, the migrations might take several seconds up to 20 minutes.

Update Java and Tomcat
^^^^^^^^^^^^^^^^^^^^^^
The last Effektif release 2.27.x is already compatible with Java 8 and Tomcat 8. Therefore, you should start by updating Java and Tomcat, because Effektif 3.4 will not run on Java 7. You can for instance install Tomcat 8 next to an existing Tomcat 7, in order to simply switch between the application servers. Section :ref:`install-tomcat` explains how to setup a Tomcat 8 server. After the successful setup, ensure none of the Tomcat servers is running. Then copy the directory ``${TOMCAT_HOME}/webapps/ROOT`` from your Tomcat 7 to your Tomcat 8 directory and start the Tomcat 8 server. Now, you should be able access the Effektif system again via a browser. 

Update Effektif
^^^^^^^^^^^^^^^
As mentioned before, with the latest update to version 3.4, the data schema has changed. Therefore, you are advised to create a backup of your database before updating the application. Furthermore, the data migrations might take several seconds up to minutes. They are executed on the start of the server. Therefore, the first start of Effektif might take longer than usual.

See chapter :ref:`update` for more information on how to update the Effektif application. After you have successfully updated Effektif, you can continue with the next section, which covers the update of MongoDB.

Update MongoDB 
^^^^^^^^^^^^^^
Effektif 3.4 will 
download a newer version of robomongo (if necessary)

change of storage engine

configuration file format has changed