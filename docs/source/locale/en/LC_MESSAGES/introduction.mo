��          �       |      |     }  �   �     I  T   Y     �    �     �     �  �   �     �     �  �   �  �   �  �   t  �   �  �   �     s  Z     y   �  K   T	  Q   �	  �  �	     �  �   �     k  T   {     �    �     �     �  �   �     �     �  �     �   �  �   �  �     �        �  Z   �  y   �  K   v  Q   �   Apache Tomcat Effektif runs as a web application. The user interface can be accessed using a modern web browser. More details about the supported browsers can be found in the system requirements section. Effektif system In order to setup and work with Effektif, several software components are necessary. Introduction It is possible to setup Effektif also on other Linux distributions. However, the instructions in this manual are only tested for Debian. Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions. Mail server (SMTP) MongoDB MongoDB is a document-oriented database system. It is the only database system that is supported by Effektif. More detailed information about MongoDB can be found in the MongoDB documentation: http://docs.mongodb.org/v2.4/ Naming conventions Software components The Apache Tomcat is an application server that hosts the Effektif web application.  The Effektif web application serves the Effektif application to the users’ browser and it also includes the backend of the Effektif system. The Effektif system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database. The mail server is necessary to send notifications and invitation requests to users. Any server that is accessible via SMTP can be used. This is the Effektif administration manual. It will provide you with information to setup the Effektif system on your own server infrastructure. Effektif officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system. Web browser Within this adminstrators guide several placeholders are used to increase the readability. ``$EFFEKTIF_HOME`` - Refers to the directory that contains the unzipped content of the downloaded effektif-{version}.zip. ``$MONGO_HOME`` - Referes to the directory where your MongoDB is installed. ``$TOMCAT_HOME`` - Refers to the directory where your Apache Tomcat is installed. Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-30 13:50+0100
PO-Revision-Date: 2014-10-31 11:22+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: en
X-Generator: Poedit 1.6.9
X-Poedit-SourceCharset: UTF-8
 Apache Tomcat Effektif runs as a web application. The user interface can be accessed using a modern web browser. More details about the supported browsers can be found in the system requirements section. Effektif system In order to setup and work with Effektif, several software components are necessary. Introduction It is possible to setup Effektif also on other Linux distributions. However, the instructions in this manual are only tested for Debian. Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions. Mail server (SMTP) MongoDB MongoDB is a document-oriented database system. It is the only database system that is supported by Effektif. More detailed information about MongoDB can be found in the MongoDB documentation: http://docs.mongodb.org/v2.4/ Naming conventions Software components The Apache Tomcat is an application server that hosts the Effektif web application.  The Effektif web application serves the Effektif application to the users’ browser and it also includes the backend of the Effektif system. The Effektif system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database. The mail server is necessary to send notifications and invitation requests to users. Any server that is accessible via SMTP can be used. This is the Effektif administration manual. It will provide you with information to setup the Effektif system on your own server infrastructure. Effektif officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system. Web browser Within this adminstrators guide several placeholders are used to increase the readability. ``$EFFEKTIF_HOME`` - Refers to the directory that contains the unzipped content of the downloaded effektif-{version}.zip. ``$MONGO_HOME`` - Referes to the directory where your MongoDB is installed. ``$TOMCAT_HOME`` - Refers to the directory where your Apache Tomcat is installed. 