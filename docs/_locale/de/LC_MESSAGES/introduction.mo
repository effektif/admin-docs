��                        �     �  ]   �     Y    f     t     �  �   �     b     u  �   }  m     �   v  8   D  P   }  �   �     �     �    �  �   �  �   �	     
  �        �  Z   �     
          2     C  �  V       z     
   �  �   �     �     �  �   �     �     �  �   �  }   C  �   �  H   �  W   �    8     P     i  A  ~  �   �  �   x  t  .  �   �  
   Y  v   d     �     �             Apache Tomcat In order to setup and work with Signavio Workflow, several software components are necessary. Introduction It is possible to setup Signavio Workflow also on other Linux distributions. However, the instructions in this manual are only tested for Debian. Probably, you will have to adjust the instructions to your system, but the used software should work on most distributions. Mail server (SMTP) MongoDB MongoDB is a document-oriented database system. It is the only database system that Signavio Workflow supports. You can find more detailed information in the `MongoDB documentation <https://docs.mongodb.org>`_. Naming conventions Node.js Node.js is a runtime environment for JavaScript which is used by Signavio Workflow to execute custom JavaScript tasks created by the user. Refers to the directory that contains the unzipped content of the downloaded signavio-workflow-{version}.zip. Refers to the directory where your Apache Tomcat is installed. This directory contains the folders ``webapps`` and ``conf``\ . On Linux for example the directory might be located in ``/var/lib/tomcat8``\ . Refers to the directory where your MongoDB is installed. Refers to the directory where your Signavio Workflow Script Engine is installed. Signavio Workflow runs as a web application. The user interface can be accessed using a modern web browser. More details about the supported browsers can be found in the section :ref:`supported-browsers`\ . Signavio Workflow system Software components The Apache Tomcat is an application server that hosts the Signavio Workflow web application. The Signavio Workflow web application serves the Signavio Workflow application to the users’ browser and it also includes the backend of the Signavio Workflow system. The Signavio Workflow system refers to the application that you will run on your server and that consists of a Java web archive (WAR) that is deployed on Tomcat and a MongoDB database. The mail server is necessary to send notifications and invitation requests to users. Any server that is accessible via SMTP can be used. This is the Signavio Workflow administration manual. It will provide you with information to setup the Signavio Workflow system on your own server infrastructure. Signavio Workflow officially supports Microsoft Windows Server 64Bit and Debian Stable 64Bit. Those placeholders are used within example command line code. You need to replace those placeholders with the appropriate paths on your system. Web browser Within this adminstrators guide several placeholders are used to increase the readability. ``$MONGO_HOME`` ``$SCRIPT_ENGINE_HOME`` ``$TOMCAT_HOME`` ``$WORKFLOW_HOME`` Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-30 13:50+0100
PO-Revision-Date: 2016-07-06 16:54+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: de
Language-Team: Effektif <dev@effektif.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Apache Tomcat Um Signavio Workflow zu installieren und mit Signavio Workflow zu arbeiten, werden mehrere Software-Komponenten benötigt. Einleitung Es ist jedoch möglich, Signavio Workflow auf weiteren Linux-Distributionen zu installieren. Die Linux-Beispiele in den Installationsanweisungen sind jedoch auf Debian zugeschnitten und können bei anderen Linux-Distributionen abweichen. Mail server (SMTP) MongoDB MongoDB ist ein Dokument-basiertes Datenbanksystem, das notwendig ist um Signavio Workflow auf dem Server erfolgreich auszuführen. Detaillierte Information erhalten Sie in der `MongoDB Dokumentation <https://docs.mongodb.org>`_. Platzhalter Node.js Node.js ist eine Ausführungsumgebung für JavaScript, die von Signavio Workflow für die Ausführung von benutzerdefinierten JavaScript-Tasks genutzt wird. Bezeichnet das Verzeichnis, das den entpackten Inhalt des bereitgestellten signavio-workflow-{version}.zip-Archives enthält. Bezeichnet das Verzeichnis, in dem Ihre Apache Tomcat Instanz installiert ist. Das Verzeichnis enthält die Ordner ``webapps`` und ``conf``\ . Unter Linux findet man das Verzeichnis z.B. in ``/var/lib/tomcat8``\ . Bezeichnet das Verzeichnis, in dem Ihre MongoDB Instanz installiert ist. Bezeichnet das Verzeichnis, in dem die Signavio Workflow Script Engine installiert ist. Da es sich bei Signavio Workflow um eine Webanwendung handelt, wird die Nutzeroberfläche über einen Webbrowser aufgerufen. Hierfür können gängige moderne Webbrowser verwendet werden. Details zu den unterstützten Browsern finden Sie im Abschnitt :ref:`supported-browsers`\ . Signavio Workflow-System Software-Komponenten Apache Tomcat ist ein Applikationsserver, in dem die Signavio Workflow Webanwendung bereitgestellt wird. Durch die Signavio Workflow Webanwendung werden die Front End-Applikationsdateien für die Browser der Nutzer verfügbar gemacht und über Request Handler mit der im Tomcat ausgeführten Back End-Anwendung verbunden. Das Signavio Workflow-System ist eine Webanwendung, die als Java Web Archive (WAR) in einer Apache Tomcat Instanz eingesetzt wird und mit einem MongoDB Datenbanksystem verbunden wird. Um Benachrichtungen und Einladungen zu versenden, muss Effektif mit einem Email-Server verbunden werden. Hierfür kann ein beliebiger Server verwendet werden, der SMTP unterstützt. Dieses Dokument beinhaltet das Signavio Workflow Administratorenhandbuch. Es enthält detaillierte Informationen und Anweisungen für die Installation von Signavio Workflow auf Ihren hauseigenen Server (oder auf der Infrastruktur eines Cloudanbieters Ihrer Wahl). Signavio Workflow unterstützt offiziell die Betriebssysteme Windows Server 64 Bit und Debian Stable 64 Bit. Diese Platzhalter werden in den Kommandozeilen-Beispielen verwendet. Um die Kommandos auszuführen, müssen die Platzhalter durch die entsprechenden Verzeichnispfade ersetzt werden. Webbrowser Um die Verständlichkeit zu verbessern, werden in diesem Administratorenhandbuch die folgenden Platzhalter verwendet:  ``$MONGO_HOME`` ``$SCRIPT_ENGINE_HOME`` ``$TOMCAT_HOME`` ``$WORKFLOW_HOME`` 