.. _restore:

Restoring backups
=================
Backups can be restored using MongoDB’s ``mongorestore`` tool.
Like ``mongodump`` you run it on the command line.
For more detailed information, see the official ``mongorestore`` documentation:

https://docs.mongodb.org/manual/reference/program/mongorestore

You will need to use the Signavio Workflow MongoDB user credentials again to overwrite the contents of the Signavio Workflow databases.

We recommend running mongorestore with the parameter --drop which will remove every collection (table) from the database before it is restored.

Windows
```````
The mongorestore.exe can be found in your MongoDB installation directory: ``$MONGO_HOME\bin\mongorestore.exe``\ . 
If you followed the instructions in this guide to setup the database, you can execute the following command on the command line: ::

    C:\MongoDB\bin\mongorestore.exe --drop -u signavio -p <SignavioUserPassword> C:\path\to\dumps

Replace the user credentials with the ones you have chosen during the setup and the directory with the one where you store your backups.

Debian
``````
Using Debian, the command to restore a backup stored in /path/to/dump would look like this: ::

    mongorestore --drop -u signavio -p <SignavioUserPassword> /path/to/dump

As you can see, you have to fill in the credentials of the Signavio Workflow MongoDB user again. Furthermore, you need to specify where the backup is located.