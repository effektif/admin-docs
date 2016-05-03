.. _signavio-integration:

Signavio Process Editor integration
===================================
The Signavio Process Editor (SPE) integration with Signavio Workflow enables Signavio users to execute approval workflows for their process models using Signavio Workflow. 
In order to setup the integration properly, both systems, SPE and Signavio Workflow, have to be installed. 
For information about installing SPE refer to SPE's adminstration manual. 
In case both systems run on the same server, you need to set up two Tomcat instances.

Compatibility list
------------------
Due to changes in the communication protocol, you are required to use a compatible version of the SPE in combination with your Signavio Workflow system. 
The following table shows the compatible versions of Signavio Workflow and SPE.

=========================   ===============================
Signavio Workflow version   Signavio Process Editor version
2.22.6                      8.3 - 8.6
2.27.4 - 2.32.7             9.2.1 - 9.3
3.4.7                       9.7
=========================   ===============================

Setup
-----
1. Make sure both systems are NOT running.
2. Edit the Signavio configuration file ``ROOT/WEB-INF/classes/configuration.xml`` which can be found in the Tomcat that hosts the SPE system. ::
    
    <effektif>  
      <effektifServerUrl>http://your.workflow.domain:port</effektifServerUrl>
      <effektifUserName>system@signavio.com</effektifUserName>
      <effektifUserPw>yourpassword</effektifUserPw>
    </effektif>

.. tabularcolumns:: |p{4cm}|p{11cm}|

=====================   =====================
``effektifServerUrl``   Defines the URL under which your Signavio Workflow system is available.
``effektifUserName``    Defines the mail of the system user that will access the Signavio Workflow system. Make sure to use ``system@signavio.com`` to ensure the integration to work properly. The value is already preconfigured. You do NOT have to create an account for this user in any of the systems.
``effektifUserPw``      Defines the password of the system user. Remember this password, you will need to set the exact same password in the Signavio Workflow configuration file.
=====================   =====================

3. Edit the Signavio Workflow configuration file ``$TOMCAT_HOME/webapps/ROOT/WEB-INF/classes/ effektif-onpremise.properties`` and add / update the following entries. ::

    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
        serviceBaseUrl=http://your.signavio.domain:port
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
       clientId=com.effektif.oem
    effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.
       clientSecret=yourpassword

If you add any of the following properties to the configuration file, make sure to add the required prefix ``effektif.com.effektif.model.service.signavio.SignavioAuthenticationProvider.`` in front of the property key:

.. tabularcolumns:: |p{4cm}|p{11cm}|

==================  ==================
``serviceBaseUrl``  Defines the URL under which your Signavio system is available.
``clientId``        Defines the ID the Signavio Workflow system uses to identify itself to the Signavio system. Make sure to use ``com.effektif.oem`` to ensure the integration to work properly. This value is already preconfigured.
``clientSecret``    Defines the password the Signavio Workflow system uses to identify itself to the Signavio system. Reuse the same password that you have set in the Signavio configuration file.
==================  ==================

4. Start both systems.
5. Activate the approval workflow feature within your Signavio workspace. Your Signavio Workflow organization will be setup automatically. For more information on how to activate the approval workflow, refer to Signavio's user manual.

.. _signavio-user-management:

User management
---------------
In case you use the Signavio Workflow OEM version that is shipped with the SPE, the user management is handled by the SPE system. 
The SPE system will synchronise all users to Signavio Workflow. 
Within Signavio Workflow you will not be able to register any initial user nor invite more users. 

If you have purchased a standalone version of Signavio Workflow, you will be able to create an initial user and invite more users to Signavio Workflow. 
However, it is advised to create your Signavio Workflow organization by activating the approval workflow feature in the SPE. 
This way your SPE workspace and the Signavio Workflow organization will be linked automatically.