��    Y      �     �      �  P   �  $   �  Y     \   y  H   �  W   	  d   w	  G   �	  *   $
  O   O
  K   �
  �  �
  R   �  !   !  p   C  _   �  C     �   X  K   X  6   �  (   �  A     )   F     p  @   �  ;   �  )   	  ,   3  _   `  V   �       $   4  O   Y  �   �  %  �  s   �  :  ;  �  v  :   <  �   w     �  (     3   A  t   u  �   �  �   �  �   &  ;   �  3   �     1  �  H  0     3   I     }     �  9   �  6   �  I        `  0   �    �  !   �      �   g   �   r   _!  �  �!  9   k$  �   �$  Q   3%  b   �%  �   �%  �   �&  .   �'     �'  $   (     ((  k   D(  �   �(  4   s)     �)  �   �)  4   �*     �*     �*  Q   +  e   h+  W   �+  C   &,  �  j,  b   2.  '   �.  {   �.  p   9/  H   �/  S   �/  i   G0  A   �0  <   �0  Z   01  M   �1  5  �1  r   4  (   �4  �   �4  �   95  S   �5  !  6  ]   17  H   �7  0   �7  E   	8  '   O8     w8  E   �8  \   �8  A   69  7   x9  q   �9  h   ":  !   �:  "   �:  `   �:  3  1;    e<  |   �=  �  �=  2  �?  9   �A  �   �A     �B  5   �B  B   �B  �   (C  �   �C  �   KD  �   E  P   �E  ?   /F     oF    �F  6   �H  2   �H     I  #   I  L   >I  ?   �I  ]   �I  "   )J  .   LJ  N  {J  +   �K  "   �K  z   L  �   �L  �  M  A   �O  �   P  X   �P  i   Q  �   {Q  �   pR  5   US     �S  "   �S      �S  �   �S  �   pT  ]   XU     �U  	  �U  7   �V  "   W     +W  b   DW  u   �W  _   X  R   }X     Y   M                  O       &         -   C              <      W   ;   .   L   P   #                   0   D       F   A   "          +       )          E          H   9             S          =   T          5       1             U   /   ,          
   Q   2       $                7       3   %   X                 :          B       !   J   @   V      6   4             N   K           *       I                 '   (   >   R       G                         	   ?   8    (Optional) Create an Active Directory group that contains all groups as members. (Optional) There are groups defined. *Admin group DN* - the DN of the Active Directory group which contains all administrators *Group group DN* - (optional) the DN of the Active Directory group which contains all groups *License* - the license that will be assigned to every synchronised user *URL* - the location of your Active Directory server, e.g. ``ldap://adtest.local:389``\ *User group DN* - the distinguished name (DN) of the Active Directory group which contains all users *username* and *password* - the login credentials of the domain account A Windows domain for authenticating users. A domain account for querying the Active Directory - its username and password. A domain account for running Signavio Workflow - its username and password. Active Directory users and groups that should be synchronised with Signavio Workflow are managed within Active Directory by adding them to specific Active Directory groups. There are two groups for users, one which contains all Signavio Workflow users and one which contains only administrators. All members of the administrator group must be members of the user group as well. Nested groups are not supported. All users and administrators need to be direct members of their groups. Add the ``krb5.conf`` and ``login.conf`` configuration files to ``$TOMCAT_HOME/``. Adding SPNEGO configuration files Before synchronisation can start, the configuration must be validated. Validation includes the following checks. Before you can configure the synchronisation, check that you have the following pre-requisites. Before you start, check that you have the following pre-requisites. By default the Tomcat application server is executed with a local system account. The SSO setup requires the Tomcat to be executed with a domain account. You should use the same domain account which you already configured in :ref:`configure-sso-filter`\ . Choose the option *This account* and fill in the domain account credentials Configure Tomcat to be executed with a domain account. Configure the SPNEGO SSO Servlet filter. Configuring SSO in Apache Tomcat consists of the following steps. Configuring the SPNEGO SSO Servlet filter Configuring the Tomcat user Configuring the synchronisation consists of the following steps. Copy ``krb5.conf`` to ``$TOMCAT_HOME/``, and edit the file: Copy ``login.conf`` to ``$TOMCAT_HOME/``. Create a new Active Directory configuration. Create an Active Directory group that contains all Signavio Workflow administrators as members. Create an Active Directory group that contains all Signavio Workflow users as members. Creating a new configuration Creating the Active Directory groups Every time you change the configuration, the validation must be executed again. First follow the steps in the `SPNEGO Pre-flight checklist <http://spnego.sourceforge.net/pre_flight.html>`_. Run the ``HelloKDC`` connection test in the ``$TOMCAT_HOME/`` directory to use the ``krb5.conf`` and ``login.conf`` you configured above. For example, our domain is called ``ADTEST.LOCAL``, the computer name of the server is ``VM-42``, Signavio Workflow will be available under the domain ``http://workflow.intranet:8080`` and the domain user account is ``tomcat@adtest.local``\ . Then we would have to register the following SPNs: For more information see the `Microsoft documentation <https://msdn.microsoft.com/en-us/library/cc281382.aspx>`_\ . If the configuration is valid, you can synchronise the users and groups. Start the synchronisation by clicking on *Synchronise*. If the synchronisation was successful, you will see a report of the added / updated users and groups. If the synchronisation failed, a list with more detailed information will be shown. If you have completed the setup described here and the SSO is still not working, please make sure you are accessing the web application from a different machine than the one that runs the Tomcat server. Furthermore, check if `Integrated Windows Authentication <https://en.wikipedia.org/wiki/Integrated_Windows_Authentication>`_ is activated and the Signavio Workflow system is a trusted service, for instance by adding the address to the local intranet. If you see an error page with the following error message: In the LDAP configuration tab, select *Create* to start the configuration. Enter the configuration details on the configuration form. Install the SPNEGO library Install the SPNEGO library’s JAR file. Log in to Signavio Workflow with your initial user. Near the bottom, replace two occurrences of ``???`` with the domain account’s username and password, respectively. Note that in the `Pre-flight checklist`, the `Do we know the address of the KDC?` section recommends using the KDC host name instead of the IP address. Note the synchronisation might take several seconds or minutes depending on the number of users you want to synchronise and the perfomance of the Active Directory. Note the validation might take several seconds depending on the number of users you want to synchronise and the perfomance of the Active Directory server. Open the *Organization settings* and select the *LDAP* tab. Open the Windows services dialogue ``services.msc`` Optional configuration Optionally, you can define a third group that contains all Active Directory groups that should be synchronised. All members of this group should be Active Directory groups as well. Again nested groups are not supported. Users must be direct members of the synchronised groups. The synchronisation will copy the attributes ``cn``, ``dn`` and ``objectGUID`` to the group in Signavio Workflow. Every group member that is not a Signavio Workflow user will be ignored. Register Tomcat’s Service Principal Name (SPN) Registering Tomcat’s Service Principal Name (SPN) Restart Tomcat. Select the *Log On* tab Select your Apache Tomcat service and open the properties Signavio Workflow can connect to the Active Directory. Signavio Workflow is installed on a Windows Server that is on the domain. Signavio Workflow is installed. Single Sign-On using Windows and Kerberos/SPNEGO Start the validation by selecting *Validate*. If the configuration is valid, the *Synchronise* button is enabled. If the configuration is not valid, the page shows a list with more detailed information. In that case fix the issues and run the validation again. Synchronise the users and groups. Synchronising users and groups The SPNEGO library makes it possible to authenticate users by connecting to an Active Directory server. The SSO Servlet filter uses Windows authentication to automatically log in when a user accesses Signavio Workflow. The `SPN <https://msdn.microsoft.com/en-us/library/ms677949(v=vs.85).aspx>`_ is the identifier used by Kerberos authentication to associate a service instance with a service logon account. You will have to associate the domain account for Signavio Workflow with the service’s fully-qualified domain name (FQDN). Therefore, you should register a SPN for every possible alias of the service, including the computer name of the server with and without domain name, as well as any other DNS entries that point to this server. In order to define a SPN, use ``setspn.exe`` - part of the `Windows Support Tools <https://en.wikipedia.org/wiki/Windows_Support_Tools>`_\ . The configured groups are proper Active Directory groups. The enterprise version of Signavio Workflow offers user and group synchronisation with an Active Directory Server using the LDAP V3 protocol. The first Signavio Workflow user is registered, see :ref:`create-initial-user`\ . The last field of the configuration form will show you if the configuration was already validated. The synchronisation will copy the attributes ``givenName``, ``sn``, ``mail``, ``dn``, ``objectGUID``, ``sAMAccountName`` and ``userPrincipalName``\ to the user in Signavio Workflow. It is required that every user has the ``mail`` attribute defined. The time difference between the computer accessing Signavio Workflow and the Kerberos server is bigger than 5 minutes. You will need to synchronise the time on all machines, e.g. by running ntp to fix the issue. The users have the ``mail`` attribute defined. There are sufficient licenses. There is at least one administrator. There is at least one user. This section provides instructions for optional configuration, which is not required for all installations. To configure, edit ``$TOMCAT_HOME/conf/web.xml`` and add the following lines immediately before the final line (``</web-app>``), from ``$WORKFLOW_HOME/optional/spnego/filter-configuration.xml``. To install, copy two files to ``$TOMCAT_HOME/lib/``: Troubleshooting Use this configuration to enable Single Sign-On (SSO) in a Windows environment that supports user authentication using `Kerberos <https://en.wikipedia.org/wiki/Kerberos_%28protocol%29>`_ and `SPNEGO <https://en.wikipedia.org/wiki/SPNEGO>`_. User and group synchronisation with Active Directory Validate your configuration. Validating a configuration Windows domain users added to Signavio Workflow, e.g. using LDAP synchronisation. You can list all registered SPNs which are associated to a domain account with the following command: replace ``123.45.6.7`` with the host name or IP address of the Active Directory server. replace five occurrences of ``ADTEST`` with the Windows domain name Project-Id-Version: Signavio Workflow administrators guide 3.9
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-29 16:03+0200
PO-Revision-Date: 2016-08-29 16:07+0100
Last-Translator: Christian Wiggert <christian.wiggert@signavio.com>
Language-Team: Signavio Workflow Dev <dev.effektif@signavio.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
Language: de
X-Generator: Poedit 1.6.9
 (Optional) Legen Sie eine Active Directory-Gruppe an, welche alle Gruppen als Mitglieder enthält. (Optional) Die Gruppen sind festgelegt. *DN der Administratorengruppe* - der Distinguished Name (DN) der Active Directory-Gruppe, die alle Administratoren enthält *DN der Gruppe der Gruppen* - der Distinguished Name (DN) der Active Directory-Gruppe, die alle Gruppen enthält *Lizenz* - die Lizenz, die jedem synchronisierten Nutzer zugewiesen wird *URL* - die Adresse des Active Directory Servers, z.B. ``ldap://adtest.local:389``\ *DN der Nutzergruppe* - der Distinguished Name (DN) der Active Directory-Gruppe, die alle Nutzer enthält *Nutzername* und *Passwort* - die Zugangsdaten des Domänenkontos Ein Windows Domänenkonto um die Nutzer zu authentifizieren. Ein Domänenkonto um Anfragen an das Active Directory zu stellen - Nutzername und Passwort Ein Domänenkonto um Signavio Workflow auszuführen - Nutzername und Passwort Active Directory-Nutzer und Gruppen, die mit Signavio Workflow synchronisiert werden sollen, werden innerhalb des Active Directory verwaltet, in dem sie zu speziellen Active Directory-Gruppen hinzugefügt werden. Es gibt zwei Gruppen für Nutzer. Die Erste enthält alle Signavio Workflow-Nutzer. Die zweite Gruppe enthält nur die Administratoren. Alle Mitglieder der Administratorengruppe müssen auch Mitglieder der Nutzergruppe sein. Geschachtelte Gruppen werden nicht unterstützt. Alle Nutzer und Administratoren müssen direkte Mitglieder Ihrer Gruppen sein. Fügen Sie die Konfigurationsdateien  ``krb5.conf`` und ``login.conf`` zu dem Verzeichnis ``$TOMCAT_HOME/`` hinzu. SPNEGO Konfigurationsdateien hinzufügen Bevor die Synchronisation ausgeführt werden kann, muss die Konfiguration validiert werden. Die Validierung umfasst die folgenden Kontrollen. Bevor Sie mit der Konfiguration für die Synchronisation beginnen, überprüfen Sie ob die folgende Vorbedingungen erfüllt sind. Bevor Sie beginnen, stellen Sie sicher, dass folgende Vorbedingungen erfüllt sind. Standardmäßig wird der Tomcat Server mit einem lokalen Systemkonto ausgeführt. Für das SSO Setup ist es jedoch erforderlich Tomcat mit einem Domänenkonto auszuführen. Sie sollten das gleiche Domänenkonto verwenden, dass Sie bereits in :ref:`configure-sso-filter` konfiguriert haben. Wählen Sie die Option *Dieses Konto* und tragen Sie die Zugangsdaten des Domänenkontos ein. Konfigurieren Sie, dass Tomcat mit einem Domänenkonto ausgeführt wird. Konfigurieren Sie den SPNEGO SSO Servlet Filter. Die Konfiguration von SSO im Apache Tomcat umfasst folgende Schritte. SPNEGO SSO Servlet Filter konfigurieren Tomcat-Nutzer konfigurieren Die Konfiguration der Synchronisation umfasst die folgenden Schritte. Kopieren Sie ``krb5.conf`` in das Verzeichnis ``$TOMCAT_HOME/`` und passen Sie die Datei an: Kopieren Sie ``login.conf`` in das Verzeichnis ``$TOMCAT_HOME/``. Erstellen Sie eine neue Active Directory-Konfiguration. Legen Sie eine Active Directory-Gruppe an, welche alle Signavio Workflow-Administratoren als Mitglieder enthält. Legen Sie eine Active Directory-Gruppe an, welche alle Signavio Workflow-Nutzer als Mitglieder enthält. Eine neue Konfiguration erstellen Active Directory-Gruppen erstellen Jede Änderung der Konfiguration erfordert, dass die Validierung erneut ausgeführt werden muss. Folgen Sie zuerst den Anweisungen in der `SPNEGO Pre-flight Checkliste <http://spnego.sourceforge.net/pre_flight.html>`_. Führen Sie den ``HelloKDC`` Verbindungstest im Verzeichnis ``$TOMCAT_HOME/`` aus und benutzen Sie dafür die Dateien ``krb5.conf`` und ``login.conf``, die Sie zuvor konfiguriert haben. In unserem Beispiel heißt die Domäne ``ADTEST.LOCAL``, der Computername des Servers lautet ``VM-42``, Signavio Workflow ist unter der Adresse ``http://workflow.intranet:8080`` verfügbar und das Domänenkonto heißt ``tomcat@adtest.local``\ . Daraus ergeben sich die folgenden SPNs: Weitere Information finden Sie in der `Microsoft Dokumentation <https://msdn.microsoft.com/en-us/library/cc281382.aspx>`_\ . Nutzer und Gruppen können synchronisiert werden, sobald die Konfiguration gültig ist. Starten Sie die Synchronisation, in dem Sie auf *Synchronisieren* klicken. Wenn die Synchronisation erfolgreich war, sehen Sie einen Bericht über die hinzugefügten / aktualisierten Nutzer und Gruppen. Wenn die Synchronisation nicht erfolgreich war, sehen Sie eine Liste mit detaillierteren Informationen. Wenn Sie das hier beschriebene Setup vollständig durchlaufen haben und SSO trotzdem noch nicht funktioniert, stellen Sie bitte sicher, dass Sie von einem gesonderten Rechner auf die Webanwendung zugreifen und nicht direkt von dem Rechner, der den Tomcat Server ausführt. Stellen Sie weiterhin sicher, dass die `Integrierte Windows-Authentifizierung <https://en.wikipedia.org/wiki/Integrated_Windows_Authentication>`_  aktiviert ist und Signavio Workflow zu den vertrauenswürdigen Diensten gehört, z.B. in dem Sie die Adresse zum lokalen Intranet hinzufügen. Wenn Sie eine Fehlerseite mit dem folgenden Fehler sehen: Im Tab LDAP, wählen Sie *Erstellen* um mit der Konfiguration zu beginnen. Fügen Sie dann die entsprechenden Konfigurationsdetails in das Formular ein. SPNEGO Bibliothek installieren Installieren Sie die JAR-Datei der SPNEGO Bibliothek. Loggen Sie sich in Signavio Workflow mit dem initialen Nutzer ein. Ersetzen Sie die zwei Vorkommnisse von ``???`` nahe des Endes mit dem entsprechenden Nutzernamen und Passwort des Domänenkontos. Beachten Sie, in der `Pre-flight Checkliste`, der Absatz `Do we know the address of the KDC?` empfiehlt den Hostnamen des KDC zu verwenden statt der IP-Adresse. Beachten Sie, die Synchronisation kann einige Sekunden oder Minuten in Anspruch nehmen, abhängig von der Anzahl der Nutzer, die Sie synchronisieren möchten und der Performance Ihres Active Directory Servers. Beachten Sie, die Validierung kann einige Sekunden in Anspruch nehmen, abhängig von der Anzahl der Nutzer, die Sie synchronisieren möchten und der Performance Ihres Active Directory Servers. Öffnen Sie die *Organisationseinstellungen* and wählen Sie den Tab *LDAP* aus. Öffnen Sie den Dialog für Windows-Dienste ``services.msc``\ . Optionale Konfiguration Optional können Sie eine dritte Gruppe definieren, welche alle Active Directory-Gruppen enthält, die synchronisiert werden sollen. Alle Mitglieder dieser Gruppe sollten Active Directory-Gruppen sein. Auch hier werden geschachtelte Gruppen nicht unterstützt. Nutzer müssen direkte Mitglieder der synchronisierten Gruppen sein. Die Synchronisation wird die Attribute ``cn``, ``dn`` und ``objectGUID`` zu der Gruppe in Signavio Workflow kopieren. Jedes Gruppenmitglied, das kein Nutzer in Signavio Workflow ist, wird ignoriert. Registrieren Sie Tomcat's Service Principal Name (SPN) Tomcat's Service Principal Name (SPN) registrieren Starten Sie Tomcat neu. Wählen Sie den Tab *Anmelden* aus. Wählen Sie den Apache Tomcat Service aus und öffnen Sie die Eigenschaften. Signavio Workflow kann sich mit dem Active Directory verbinden. Signavio Workflow ist auf einem Windows Server installiert, der sich in der Domäne befindet. Signavio Workflow ist installiert. Single Sign-On mit Windows und Kerberos/SPNEGO Starten Sie die Validierung, in dem Sie *Validieren* auswählen. Sobald die Konfiguration gültig ist, wird der Knopf *Synchronisieren* aktiviert. Wenn die Konfiguration ungültig ist, zeigt Ihnen die Seite eine Liste mit detaillierten Informationen an. In diesem Fall, beheben Sie die Probleme führen Sie die Validierung erneut aus. Synchronisieren Sie die Nutzer und Gruppen. Nutzer und Gruppen synchronisieren Die SPNEGO Bibliothek ermöglicht die Authentifizierung von Nutzern durch ein Verbindung zu einem Active Directory Server. Der SSO Servlet Filter nutzt die Windows-Authentifizierung um Nutzer automatisch einzuloggen sobald sie auf Signavio Workflow zugreifen. Der `SPN <https://msdn.microsoft.com/en-us/library/ms677949(v=vs.85).aspx>`_ ist der Bezeichner, der von der Kerberos-Authentifizierung genutzt wird, um eine Service-Instanz mit einem Service-Domänenkonto zu verknüpfen. Hierfür müssen Sie das Domänenkonto von Signavio Workflow mit dem Fully-Qualified Domain Name (FQDN) des Service verbinden. Sie sollten einen SPN für jeden möglichen Alias des Service anlegen. Dies umfasst den Namen des Servers mit und ohne Domänennamen, sowie alle DNS-Einträge, die auf den Server verweisen. Um einen SPN anzulegen, verwenden Sie ``setspn.exe`` - Teil der `Windows Support Tools <https://en.wikipedia.org/wiki/Windows_Support_Tools>`_\ . Die konfigurierten Gruppen sind korrekte Active Directory-Gruppen Die Enterprise-Version von Signavio Workflow bietet die Nutzer- und Gruppensynchronisationen mit einem Active Directory Server unter der Verwendung des LDAP V3 Protokolls. Der erste Signavio Workflow-Nutzer wurde registriert, vgl. :ref:`create-initial-user`\ . Das letzte Feld des Konfigurationsformulars zeigt Ihnen an, ob die Konfiguration bereits validiert wurde. Die Synchronisation wird die Attribute  ``givenName``, ``sn``, ``mail``, ``dn``, ``objectGUID``, ``sAMAccountName`` und ``userPrincipalName``\ zu dem Nutzer in Signavio Workflow kopieren. Jeder Nutzer muss das Attribut ``mail`` definiert haben. Der Zeitunterschied zwischen dem Computer, der auf Signavio Workflow zugreift und dem Kerberos Server ist größer als fünf Minuten. Sie müssen die Zeit zwischen allen Maschinen synchronisieren, z.B. in dem Sie ntp ausführen. Für die Nutzer ist das Attribute ``mail`` definiert. Es gibt genügend Lizenzen. Es wenigstens einen Administrator. Es gibt wenigstens einen Nutzer. In diesem Abschnitt werden optionale Konfigurationsmöglichkeiten beschrieben, die nicht für alle Installationen erforderlich sind. Für die Konfiguration passen Sie die ``$TOMCAT_HOME/conf/web.xml`` an. Kopieren Sie den Inhalt von ``$WORKFLOW_HOME/optional/spnego/filter-configuration.xml`` und fügen Sie Ihn direkt vor der letzten Zeile (``</web-app>``) hinzu. Für die Installation kopieren Sie die zwei Dateien in das Verzeichnis ``$TOMCAT_HOME/lib/``: Troubleshooting Benutzen Sie diese Konfiguration um Single Sign-On (SSO) in einer Windows-Umgebung zu aktivieren, die eine Authentifizierung über `Kerberos <https://en.wikipedia.org/wiki/Kerberos_%28protocol%29>`_ und `SPNEGO <https://en.wikipedia.org/wiki/SPNEGO>`_ unterstützt. Nutzer- und Gruppensynchronisation mit Active Directory Validieren Sie Ihre Konfiguration. Konfiguration validieren Windows Domänennutzer wurden zu Signavio Workflow hinzugefügt, z.B. mit der LDAP Synchronisation Mit dem folgenden Befehl können Sie alle registrierten SPNs, die mit einem Domänenkonto verknüpft sind, auflisten: Ersetzen Sie ``123.45.6.7`` mit dem Hostnamen oder der IP-Adresse des Active Directory Servers. Ersetzen Sie alle Vorkommnisse von ``ADTEST`` mit dem Namen Ihrer Windows-Domäne. 