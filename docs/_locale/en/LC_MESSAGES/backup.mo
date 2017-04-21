��          �               |  L   }     �     �  w   �  Y  P    �  �   �  �   g  �  3  �   �  m   c  /  �     
  �   	
      g       |     �     �     �  �   �  �  Y  L        _     f  w   m  Y  �    ?  �   N  �   �  �  �  �   R  m   �  /  f     �  �   �    �  g  �          "     9     R  �   k   Another example will create a folder with a timestamp for every new dump: :: Backup Debian If you followed the instructions within this guide to setup MongoDB, then ``mongodump`` could be executed like this: :: In order to take a backup, it is sufficient to backup the content of MongoDB. All uploaded files are stored in the database and, therefore, covered by a database backup. MongoDB comes with built-in solutions for backups. Signavio recommends to use mongodump. For more detailed information about backups of MongoDB see the official documentation: In the example above, adjust the location of your MongoDB installation accordingly. The parameter -u defines the username and -p the password of the Workflow Accelerator MongoDB user, replace them with your chosen values. The parameter -o specifies the output directory. It's good practice to take backups regularly. We recommend using cron to schedule backups. You could for instance setup ``/etc/crontab`` that executes the mongodump command. Make sure the MongoDB server is running when you want to execute mongodump. If not stated otherwise via command line parameters, mongodump will try to backup data from the locally running mongod service. The ``mongodump.exe`` can be found in the MongoDB installation directory, ``$MONGO_HOME\bin\mongodump.exe``\ . You just have to create a directory where the backups should be stored and make sure the user doing the backups has the necessary read / write permissions. If you followed the instructions within this guide to setup MongoDB, the command to execute mongodump would look like this: :: The folder dumps would then contain a subfolder for every backup with a name similar to “2014-10-07-17-49-07”. However, this method doesn’t remove old backups. The following lines will show an example on how to do a backup with mongodump on different operating systems. The parameter -u defines the username and -p the password of the Workflow Accelerator MongoDB user, replace them with your chosen values. The parameter -o specifies the output directory, in this case /path/to/dumps. Make sure the executing user has the required privileges to write to the output folder. Windows You can specify the output folder where the content of the backup is stored. Be aware, if the directory contains already an older backup, the new backup will overwrite existing files. Alternatively, you could store several backups with a timestamp. You should make sure the backup is stored in a safe location and cannot get lost if the server fails. Keep in mind, the backups can consume a lot of space, therefore, you should add additional disk space to the server if you plan storing on multiple versions of the backup. You will need to use the Signavio Workflow Accelerator MongoDB user credentials again to access the data of the Workflow Accelerator database. If you are using another MongoDB user to perform the backups, make sure he has the necessary roles. For the backups, the user needs to access all databases and the user data. The user should have the following roles: ``clusterAdmin`` ``dbAdminAnyDatabase`` ``readWriteAnyDatabase`` ``userAdminAnyDatabase`` https://docs.mongodb.org/manual/core/backups/ https://docs.mongodb.org/manual/tutorial/backup-and-restore-tools/#binary-bson-dumps Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-20 16:01+0200
PO-Revision-Date: 2017-04-20 16:11+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: en
Language-Team: Effektif <dev@effektif.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 Another example will create a folder with a timestamp for every new dump: :: Backup Debian If you followed the instructions within this guide to setup MongoDB, then ``mongodump`` could be executed like this: :: In order to take a backup, it is sufficient to backup the content of MongoDB. All uploaded files are stored in the database and, therefore, covered by a database backup. MongoDB comes with built-in solutions for backups. Signavio recommends to use mongodump. For more detailed information about backups of MongoDB see the official documentation: In the example above, adjust the location of your MongoDB installation accordingly. The parameter -u defines the username and -p the password of the Workflow Accelerator MongoDB user, replace them with your chosen values. The parameter -o specifies the output directory. It's good practice to take backups regularly. We recommend using cron to schedule backups. You could for instance setup ``/etc/crontab`` that executes the mongodump command. Make sure the MongoDB server is running when you want to execute mongodump. If not stated otherwise via command line parameters, mongodump will try to backup data from the locally running mongod service. The ``mongodump.exe`` can be found in the MongoDB installation directory, ``$MONGO_HOME\bin\mongodump.exe``\ . You just have to create a directory where the backups should be stored and make sure the user doing the backups has the necessary read / write permissions. If you followed the instructions within this guide to setup MongoDB, the command to execute mongodump would look like this: :: The folder dumps would then contain a subfolder for every backup with a name similar to “2014-10-07-17-49-07”. However, this method doesn’t remove old backups. The following lines will show an example on how to do a backup with mongodump on different operating systems. The parameter -u defines the username and -p the password of the Workflow Accelerator MongoDB user, replace them with your chosen values. The parameter -o specifies the output directory, in this case /path/to/dumps. Make sure the executing user has the required privileges to write to the output folder. Windows You can specify the output folder where the content of the backup is stored. Be aware, if the directory contains already an older backup, the new backup will overwrite existing files. Alternatively, you could store several backups with a timestamp. You should make sure the backup is stored in a safe location and cannot get lost if the server fails. Keep in mind, the backups can consume a lot of space, therefore, you should add additional disk space to the server if you plan storing on multiple versions of the backup. You will need to use the Signavio Workflow Accelerator MongoDB user credentials again to access the data of the Workflow Accelerator database. If you are using another MongoDB user to perform the backups, make sure he has the necessary roles. For the backups, the user needs to access all databases and the user data. The user should have the following roles: ``clusterAdmin`` ``dbAdminAnyDatabase`` ``readWriteAnyDatabase`` ``userAdminAnyDatabase`` https://docs.mongodb.org/manual/core/backups/ https://docs.mongodb.org/manual/tutorial/backup-and-restore-tools/#binary-bson-dumps 