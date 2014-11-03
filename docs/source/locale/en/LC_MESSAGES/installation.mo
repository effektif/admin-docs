��    O      �                   
        !  �   2     �     �  x   �     x     �     �  \   �     	     #  �   9  �  �  �   �	  �   �
  �  !  �  �     �     �     �     �  &   �  &   �          :     P  Z   l  �  �     v     �  2   �     �     �  }   �  �   p  �   +    �  B   �  ?     �  R  �   �  a   �  �  ?  �   �  �   �  �   �  (   \  f   �  �   �     �  �   �     �     �  �   �  g   �     �           )      A      V      d      r   !   �   H   �   8   �      2!  (   G!  (   p!  +   �!  (   �!  ;   �!  (   *"  %   S"  +   y"  +   �"  7   �"  �  	#     �$  
   �$     �$  �   �$     �%     �%  x   �%     !&     2&     9&  \   U&     �&     �&  �   �&  �  �'  �   d)  �   +*  �  �*  �  �,     @.     M.     \.     i.  &   v.  &   �.     �.     �.     �.  Z   /  �  p/     1     01  2   >1     q1     �1  }   �1  �   2  �   �2    q3  B   x4  ?   �4  �  �4  �   �6  a   �7  �  �7  �   �9  �   �:  �   8;  (   <  f   .<  �   �<     M=  �   ]=     V>     b>  �   j>  g   4?     �?     �?     �?     �?     �?     @     @  !   7@  H   Y@  8   �@     �@  (   �@  (   A  +   BA  (   nA  ;   �A  (   �A  %   �A  +   "B  +   NB  7   zB   4 GB RAM 4 core CPU 50 GB disk space A current web browser is necessary on every client that shall display the Effektif user interface. The following list shows the supported web browsers and versions: Apache Tomcat 7 Apple Safari 5 or newer Be aware, MongoDB version 2.6.x is not yet officially supported by Effektif. Please, make sure to install version 2.4.x. Configure Tomcat Debian Debian Stable Release 64Bit Furthermore, it is recommended to install the Apache Tomcat into a root folder on ``C:\``\ . Google Chrome 23 or newer Hardware requirements If you are using Linux, you might consider installing Apache Tomcat using a packet manager. In case of Debian, you can use the Advanced Packaging Tool (APT) and execute the following command: If you are using a Windows system, the download site offers a Windows Service Installer (“32-bit/64-bit Windows Service Installer”). This installer will install the Apache Tomcat as a Windows service which can be started, stopped and configured over a graphical user interface. The service installer is the recommended way for Windows users to install the Tomcat server. Please, make sure you execute the installer with administrator privileges. If you installed Tomcat using the Windows service installer, you can open the configuration dialog by opening the Windows start menu and selecting ``Program Files\Apache Tomcat\Configure Tomcat``\ . In general, please make sure the user executing the Tomcat has read / write permissions for the folder ``$TOMCAT_HOME/webapps`` and the containing subfolders. In order to allocate sufficient RAM to the Tomcat server you have to set the options Xms and Xmx followed by the number of MB allocated and a literal ‘m’. ``Xms`` defines the initial / minimum amount of RAM that is used and ``Xmx`` the allowed maximum. You are advised to allocate at least 2GB of RAM to the Tomcat. However, it is recommended to use more RAM. For example, if you want to assign 4GB of maximum RAM the option would be ``-Xmx4096m``\ . In order to run Effektif on your server, you will need to install some additional software. Depending on your deployment strategy (combined or separate system for application and database), you have to install the following software requirements either on the same server or the respective separate servers. The next sections will contain additional instructions on how to install and configure the additional software components. Install Java Install Tomcat Installation Java options Java: Oracle JSE version 7 (1.7.0_67+) Microsoft Internet Explorer 9 or newer Microsoft Windows Server 64Bit MongoDB version 2.4.x Mozilla Firefox 10 or newer On Linux systems you need to make the scripts executable with the chmod command like this: One way to define the ``JAVA_OPTS`` under Debian and other Linux distributions is to create the file setenv.sh in the Tomcat 7 ``/bin/`` directory. This directory contains also other files like the ``catalina.sh``\ , the ``startup.sh`` or the ``shutdown.sh`` und is for instance located in ``/usr/share/tomcat7`` or a similar directory. Simply create or extend any existing setenv.sh file and add the line for ``the JAVA_OPTS``\ : Operating system Other systems ROOT - this directory contains the web application Software requirements System requirements The Effektif system can be deployed on different operating systems. Officially supported are the following operating systems: The Effektif system relies on a SMTP mail server to send notifications and invite users. You can simply reuse any existing mail server in your organization that supports access via SMTP. The Java backend of the Effektif system is executed using Apache Tomcat 7. Effektif does not support any older or younger versions of Tomcat than version 7. The application server requires a Java runtime environment in order to execute the Java backend of Effektif. Therefore, you have to install Java 7 64Bit on the application server. You can download a respective installation package for your operating system here: The application server requires the following additional software: The database server requires the following additional software: The described installation in this adminstration guide will setup the database and the application server on the same system. However, it is also possible to setup the database and application server on separate systems. For instance, if you have already an infrastructure that provides MongoDB instances for different applications, you can simply reuse your infrastructure and just create another database for Effektif. The mentioned amount of RAM will be sufficient to execute the Effektif system. Nevertheless, if you can provide the system with more memory, you are advised to do so. Especially MongoDB will benefit from additional system memory. The minimal hardware requirements for the combined system of application and database server are: The required disk space depends on how you will use Effektif. 50 GB should be sufficient disk space for most scenarios. However, if you plan on using a lot of file uploads in your processes the required disk space depends largely on the number and size of the uploaded files. Be aware, the required disk space does not include the space necessary for backups. If you plan on storing the backups on the same server, you should add more. The tab Java offers the possibility to set the options and define the memory pool (minimum and maximum RAM usage). Fill in the values for Xms and Xmx into the fields for memory pool and add the other options to the text area labeled as Java Options. The values for the permanent generation space have to be increased as well, these are defined by the values ``-XX:PermSize=128m`` and ``-XX:MaxPermSize=256m``\ . There are some Java options that need to be configured before starting the Tomcat server. These options are configured using the ``JAVA_OPTS`` environment variable. It should contain the following values: This is the Tomcat configuration dialog. This section will guide you through the setup of Effektif. Simply follow the subsections step by step. This section will point the configuration options that are required to run Effektif. However, Tomcat offers more configuration options that can be found in the official documentation: Unpack Effektif Unzip the effektif-{version}.zip to a directory of your choice, e.g. ``/yourlocation/effektif-{version}`` In the rest of this guide, we'll refer to the effektif home directory as ``$EFFEKTIF_HOME``\ . The directory will contain the following files: Web browser Windows You are advised to use a 64Bit operating system in order to be able to assign more than 1.5GB of heap space to the Java VM. Furthermore, MongoDB is limited to 2GB of content on 32Bit operating systems. You can download the latest installation files for different operating systems from the following site: \*.sh - Linux shell scripts ``-Dfile.encoding=UTF-8`` ``-XXMaxPermSize=256m`` ``-XXPermSize=128m`` ``-Xms1536m`` ``-Xmx2048m`` ``apt-get install tomcat7`` ``chmod a+x $EFFEKTIF_HOME/*.sh`` ``export JAVA_OPTS=”$JAVA_OPTS -Xms1536m [... add the other options]`` db - directory that contains MongoDB configuration files effektif - directory http://tomcat.apache.org/download-70.cgi http://tomcat.apache.org/tomcat-7.0-doc/ https://www.java.com/en/download/manual.jsp initial permanent generation space in MB maximum RAM, should be at least 2GB but more is recommended maximum permanent generation space in MB minimum RAM, should be at least 1.5GB mongod.cfg - configuration file for Windows mongodb.conf - configuration file for Linux sets UTF-8 as Apache Tomcats default encoding mechanism Project-Id-Version: Effektif adminstrators guide 2.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-31 11:18+0100
PO-Revision-Date: 2014-10-31 11:22+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Effektif <dev@effektif.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: en
X-Generator: Poedit 1.6.9
X-Poedit-SourceCharset: UTF-8
 4 GB RAM 4 core CPU 50 GB disk space A current web browser is necessary on every client that shall display the Effektif user interface. The following list shows the supported web browsers and versions: Apache Tomcat 7 Apple Safari 5 or newer Be aware, MongoDB version 2.6.x is not yet officially supported by Effektif. Please, make sure to install version 2.4.x. Configure Tomcat Debian Debian Stable Release 64Bit Furthermore, it is recommended to install the Apache Tomcat into a root folder on ``C:\``\ . Google Chrome 23 or newer Hardware requirements If you are using Linux, you might consider installing Apache Tomcat using a packet manager. In case of Debian, you can use the Advanced Packaging Tool (APT) and execute the following command: If you are using a Windows system, the download site offers a Windows Service Installer (“32-bit/64-bit Windows Service Installer”). This installer will install the Apache Tomcat as a Windows service which can be started, stopped and configured over a graphical user interface. The service installer is the recommended way for Windows users to install the Tomcat server. Please, make sure you execute the installer with administrator privileges. If you installed Tomcat using the Windows service installer, you can open the configuration dialog by opening the Windows start menu and selecting ``Program Files\Apache Tomcat\Configure Tomcat``\ . In general, please make sure the user executing the Tomcat has read / write permissions for the folder ``$TOMCAT_HOME/webapps`` and the containing subfolders. In order to allocate sufficient RAM to the Tomcat server you have to set the options Xms and Xmx followed by the number of MB allocated and a literal ‘m’. ``Xms`` defines the initial / minimum amount of RAM that is used and ``Xmx`` the allowed maximum. You are advised to allocate at least 2GB of RAM to the Tomcat. However, it is recommended to use more RAM. For example, if you want to assign 4GB of maximum RAM the option would be ``-Xmx4096m``\ . In order to run Effektif on your server, you will need to install some additional software. Depending on your deployment strategy (combined or separate system for application and database), you have to install the following software requirements either on the same server or the respective separate servers. The next sections will contain additional instructions on how to install and configure the additional software components. Install Java Install Tomcat Installation Java options Java: Oracle JSE version 7 (1.7.0_67+) Microsoft Internet Explorer 9 or newer Microsoft Windows Server 64Bit MongoDB version 2.4.x Mozilla Firefox 10 or newer On Linux systems you need to make the scripts executable with the chmod command like this: One way to define the ``JAVA_OPTS`` under Debian and other Linux distributions is to create the file setenv.sh in the Tomcat 7 ``/bin/`` directory. This directory contains also other files like the ``catalina.sh``\ , the ``startup.sh`` or the ``shutdown.sh`` und is for instance located in ``/usr/share/tomcat7`` or a similar directory. Simply create or extend any existing setenv.sh file and add the line for ``the JAVA_OPTS``\ : Operating system Other systems ROOT - this directory contains the web application Software requirements System requirements The Effektif system can be deployed on different operating systems. Officially supported are the following operating systems: The Effektif system relies on a SMTP mail server to send notifications and invite users. You can simply reuse any existing mail server in your organization that supports access via SMTP. The Java backend of the Effektif system is executed using Apache Tomcat 7. Effektif does not support any older or younger versions of Tomcat than version 7. The application server requires a Java runtime environment in order to execute the Java backend of Effektif. Therefore, you have to install Java 7 64Bit on the application server. You can download a respective installation package for your operating system here: The application server requires the following additional software: The database server requires the following additional software: The described installation in this adminstration guide will setup the database and the application server on the same system. However, it is also possible to setup the database and application server on separate systems. For instance, if you have already an infrastructure that provides MongoDB instances for different applications, you can simply reuse your infrastructure and just create another database for Effektif. The mentioned amount of RAM will be sufficient to execute the Effektif system. Nevertheless, if you can provide the system with more memory, you are advised to do so. Especially MongoDB will benefit from additional system memory. The minimal hardware requirements for the combined system of application and database server are: The required disk space depends on how you will use Effektif. 50 GB should be sufficient disk space for most scenarios. However, if you plan on using a lot of file uploads in your processes the required disk space depends largely on the number and size of the uploaded files. Be aware, the required disk space does not include the space necessary for backups. If you plan on storing the backups on the same server, you should add more. The tab Java offers the possibility to set the options and define the memory pool (minimum and maximum RAM usage). Fill in the values for Xms and Xmx into the fields for memory pool and add the other options to the text area labeled as Java Options. The values for the permanent generation space have to be increased as well, these are defined by the values ``-XX:PermSize=128m`` and ``-XX:MaxPermSize=256m``\ . There are some Java options that need to be configured before starting the Tomcat server. These options are configured using the ``JAVA_OPTS`` environment variable. It should contain the following values: This is the Tomcat configuration dialog. This section will guide you through the setup of Effektif. Simply follow the subsections step by step. This section will point the configuration options that are required to run Effektif. However, Tomcat offers more configuration options that can be found in the official documentation: Unpack Effektif Unzip the effektif-{version}.zip to a directory of your choice, e.g. ``/yourlocation/effektif-{version}`` In the rest of this guide, we'll refer to the effektif home directory as ``$EFFEKTIF_HOME``\ . The directory will contain the following files: Web browser Windows You are advised to use a 64Bit operating system in order to be able to assign more than 1.5GB of heap space to the Java VM. Furthermore, MongoDB is limited to 2GB of content on 32Bit operating systems. You can download the latest installation files for different operating systems from the following site: \*.sh - Linux shell scripts ``-Dfile.encoding=UTF-8`` ``-XXMaxPermSize=256m`` ``-XXPermSize=128m`` ``-Xms1536m`` ``-Xmx2048m`` ``apt-get install tomcat7`` ``chmod a+x $EFFEKTIF_HOME/*.sh`` ``export JAVA_OPTS=”$JAVA_OPTS -Xms1536m [... add the other options]`` db - directory that contains MongoDB configuration files effektif - directory http://tomcat.apache.org/download-70.cgi http://tomcat.apache.org/tomcat-7.0-doc/ https://www.java.com/en/download/manual.jsp initial permanent generation space in MB maximum RAM, should be at least 2GB but more is recommended maximum permanent generation space in MB minimum RAM, should be at least 1.5GB mongod.cfg - configuration file for Windows mongodb.conf - configuration file for Linux sets UTF-8 as Apache Tomcats default encoding mechanism 