��          �               �   a   �   2   _  $   �    �     �  8   �  3   #  +   W  *   �  5   �  9   �  C        b  �  v  �   N  1   �  '       :     L  B   h  7   �  -   �  .   	  :   @	  G   {	  L   �	     
   On Linux systems you need to make the scripts executable with the ``chmod`` command like this: :: ROOT - this directory contains the web application Unpack Signavio Workflow Accelerator Unzip the signavio-workflow-{version}.zip to a directory of your choice, e.g. ``/yourlocation/signavio-workflow-{version}`` In the rest of this guide, we'll refer to the Workflow Accelerator home directory as ``$WORKFLOW_HOME``\ . The directory will contain the following files: \*.sh - Linux shell scripts db - directory that contains MongoDB configuration files mail-relay - directory that contains the mail relay mongod.cfg - configuration file for Windows mongod.conf - configuration file for Linux optional - directory that contains optional resources script-engine - directory that contains the script engine spnego - directory that contains resources to setup SSO with SPNEGO webapps - directory Project-Id-Version: Signavio Workflow administrators guide 3.9
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-03 19:10+0200
PO-Revision-Date: 2017-05-03 19:37+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language: de
Language-Team: Signavio Workflow Dev <dev.effektif@signavio.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.0
 Auf Linux-Systemen ist es notwendig, die Shell-Skripte ausführbar zu machen. Verwenden Sie hierfür den ``chmod``\ -Befehl, wie zum Beispiel: :: ROOT - Verzeichnis, das die Webanwendung enthält Signavio Workflow Accelerator entpacken Entpacken Sie das Archiv signavio-workflow-{version}.zip in einem Verzeichnis Ihrer Wahl, zum Beispiel: ``/yourlocation/signavio-workflow-{version}`` Dieses Verzeichnis wird im weiteren Text als ``$WORKFLOW_HOME`` bezeichnet. Das Verzeichnis enthält die folgenden Dateien: \*.sh - Linux Shell-Skripte db – Verzeichnis, das die MongoDB Konfigurationsdateien enthält mail-relay – Verzeichnis, das das Mail Relay enthält mongod.cfg - Konfigurationsdatei für Windows mongod.conf – Konfigurationsdatei für Linux optional – Verzeichnis, das optional Ressourcen enthält script-engine - Verzeichnis, das die Dateien der Script Engine enthält spnego - Verzeichnis, das die Dateien enthält um SSO mit SPNEGO aufzusetzen webapps - Verzeichnis 