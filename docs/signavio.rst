.. _signavio-integration:

Signavio Process Manager integration
====================================
The Signavio Process Manager integration with Signavio Workflow Accelerator enables Process Manager users to execute approval workflows for their process models using Workflow Accelerator.
In order to setup the integration properly, both systems, Process Manager and Workflow Accelerator, have to be installed.
For information about installing Process Manager refer to Process Managers's adminstration manual.
In case both systems run on the same server, you need to set up two Tomcat instances.

Compatibility list
------------------
Due to changes in the communication protocol, you are required to use a compatible version of the Process Manager in combination with your Workflow Accelerator system.
The following table shows the compatible versions of Workflow Accelerator and Process Manager.
You are free to update both systems in any order.
Please ensure that nobody is working on the systems while you update them.

============================  =======================
Workflow Accelerator version  Process Manager version
2.22.6                        8.3 - 8.6
2.27.4 - 2.32.7               9.2.1 - 9.3
3.4.x                         9.7
3.11.x                        10.3
3.15.x                        10.8
3.22.x                        10.15
============================  =======================

Setup
-----
1. Make sure both systems are NOT running.
2. Edit the Process Manager configuration file, which can be found in the Tomcat that hosts the Process Manager system at the following path:

  * version 9.3 and earlier: ``WEBAPPS/ROOT/WEB-INF/classes/configuration.xml``

  * version 9.7 and later: ``CONF/configuration.xml``
  
  ::

    <effektif>
      <effektifServerUrl>http://your.workflow.domain:port</effektifServerUrl>
      <effektifUserName>system@signavio.com</effektifUserName>
      <effektifUserPw>yourpassword</effektifUserPw>
    </effektif>

.. tabularcolumns:: |p{4cm}|p{11cm}|

=====================   =====================
``effektifServerUrl``   Defines the URL under which your Workflow Accelerator system is available.
``effektifUserName``    Defines the mail of the system user that will access the Workflow Accelerator system. Make sure to use ``system@signavio.com`` to ensure the integration to work properly. The value is already preconfigured. You do NOT have to create an account for this user in any of the systems.
``effektifUserPw``      Defines the password of the system user. Remember this password, you will need to set the exact same password in the Workflow Accelerator configuration file.
=====================   =====================

3. Edit the Workflow Accelerator configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/effektif-onpremise.properties`` and add / update the following entries. ::

    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
        serviceBaseUrl=http://your.signavio.domain:port
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
       clientId=com.effektif.oem
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
       clientSecret=yourpassword

If you add any of the following properties to the configuration file, make sure to add the required prefix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` in front of the property key:

.. tabularcolumns:: |p{4cm}|p{11cm}|

==================  ==================
``serviceBaseUrl``  Defines the URL under which your Process Manager system is available.
``clientId``        Defines the ID the Workflow Accelerator system uses to identify itself to the Process Manager system. Make sure to use ``com.effektif.oem`` to ensure the integration to work properly. This value is already preconfigured.
``clientSecret``    Defines the password the Workflow Accelerator system uses to identify itself to the Process Manager system. Reuse the same password that you have set in the Process Manager configuration file.
==================  ==================

4. Start both systems.
5. Activate the approval workflow feature within your Process Manager workspace. Your Workflow Accelerator organization will be setup automatically. For more information on how to activate the approval workflow, refer to Process Manager's user manual.

.. _signavio-user-management:

User management
---------------
In case you use the Workflow Accelerator OEM version that is shipped with the Process Manager, the user management is handled by the Process Manager system.
The Process Manager system will synchronise all users to Workflow Accelerator.
Within Workflow Accelerator you will not be able to register any initial user nor invite more users.

If you have purchased a standalone version of Workflow Accelerator, you will be able to create an initial user and invite more users to Workflow Accelerator.
However, it is advised to create your Workflow Accelerator organization by activating the approval workflow feature in the Process Manager.
This way your Process Manager workspace and the Workflow Accelerator organization will be linked automatically.
