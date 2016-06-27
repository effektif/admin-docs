��            )   �      �     �  ]   �     �    
          +  �   3            �   !  m   �  �     8   �  P   !  �   r     A     Z    n  �   t	  �   -
     �
  �   �     G  Z   S     �     �     �     �  �  �     �  ]   �               .     A  �   I          /  �   7  m   �  �   0  8   �  P   7  �   �     W     p    �  �   �  �   C     �  �   �     ]  Z   i     �     �     �     �                                                                            
      	                                                        Apache Tomcat In order to setup and work with Signavio Workflow, several software components are necessary. Introduction It is possible to setup Signavio Workflow also on other Linux distributions. However, the instructions in this manual are only tested for Debian. Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions. Mail server (SMTP) MongoDB MongoDB is a document-oriented database system. It is the only database system that Signavio Workflow supports. You can find more detailed information in the `MongoDB documentation <https://docs.mongodb.org>`_. Naming conventions Node.js Node.js is a runtime environment for JavaScript which is used by Signavio Workflow to execute custom JavaScript tasks created by the user. Refers to the directory that contains the unzipped content of the downloaded signavio-workflow-{version}.zip. Refers to the directory where your Apache Tomcat is installed. This directory contains the folders ``webapps`` and ``conf``\ . On Linux for example the directory might be located in ``/var/lib/tomcat8``\ . Refers to the directory where your MongoDB is installed. Refers to the directory where your Signavio Workflow Script Engine is installed. Signavio Workflow runs as a web application. The user interface can be accessed using a modern web browser. More details about the supported browsers can be found in the section :ref:`supported-browsers`\ . Signavio Workflow system Software components The Apache Tomcat is an application server that hosts the Signavio Workflow web application. The Signavio Workflow web application serves the Signavio Workflow application to the users’ browser and it also includes the backend of the Signavio Workflow system. The Signavio Workflow system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database. The mail server is necessary to send notifications and invitation requests to users. Any server that is accessible via SMTP can be used. This is the Signavio Workflow administration manual. It will provide you with information to setup the Signavio Workflow system on your own server infrastructure. Signavio Workflow officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system. Web browser Within this adminstrators guide several placeholders are used to increase the readability. ``$MONGO_HOME`` ``$SCRIPT_ENGINE_HOME`` ``$TOMCAT_HOME`` ``$WORKFLOW_HOME`` Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-30 13:50+0100
PO-Revision-Date: 2016-06-27 13:32+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
Language: en
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.6.9
X-Poedit-SourceCharset: UTF-8
 Apache Tomcat In order to setup and work with Signavio Workflow, several software components are necessary. Introduction It is possible to setup Signavio Workflow also on other Linux distributions. However, the instructions in this manual are only tested for Debian. Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions. Mail server (SMTP) MongoDB MongoDB is a document-oriented database system. It is the only database system that Signavio Workflow supports. You can find more detailed information in the `MongoDB documentation <https://docs.mongodb.org>`_. Naming conventions Node.js Node.js is a runtime environment for JavaScript which is used by Signavio Workflow to execute custom JavaScript tasks created by the user. Refers to the directory that contains the unzipped content of the downloaded signavio-workflow-{version}.zip. Refers to the directory where your Apache Tomcat is installed. This directory contains the folders ``webapps`` and ``conf``\ . On Linux for example the directory might be located in ``/var/lib/tomcat8``\ . Refers to the directory where your MongoDB is installed. Refers to the directory where your Signavio Workflow Script Engine is installed. Signavio Workflow runs as a web application. The user interface can be accessed using a modern web browser. More details about the supported browsers can be found in the section :ref:`supported-browsers`\ . Signavio Workflow system Software components The Apache Tomcat is an application server that hosts the Signavio Workflow web application. The Signavio Workflow web application serves the Signavio Workflow application to the users’ browser and it also includes the backend of the Signavio Workflow system. The Signavio Workflow system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database. The mail server is necessary to send notifications and invitation requests to users. Any server that is accessible via SMTP can be used. This is the Signavio Workflow administration manual. It will provide you with information to setup the Signavio Workflow system on your own server infrastructure. Signavio Workflow officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system. Web browser Within this adminstrators guide several placeholders are used to increase the readability. ``$MONGO_HOME`` ``$SCRIPT_ENGINE_HOME`` ``$TOMCAT_HOME`` ``$WORKFLOW_HOME`` 