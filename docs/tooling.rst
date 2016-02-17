Tooling
=======
This section lists some tools that might help you to administer and maintain your Effektif installation.
Use them at your own discretion.

.. _tooling-mongodb:

MongoDB
-------
Robomongo is a good tool for managing your MongoDB installation.
It is free and available for different operating systems.
Use it at your own discretion.
Please, be careful when you use a tool to manipulate the database. 
Effektif does not guarantee that any manipulated data can be restored. The tool can be downloaded from:

https://robomongo.org/

.. _connect-to-mongodb:

Connecting to MongoDB using Robomongo
`````````````````````````````````````
This section shows how to connect to your MongoDB server using Robomongo.
Note that MongoDB 3.2 requires you to use the latest version of Robomongo.

*Important: If you try to connect to your MongoDB from a remote system, ensure the MongoDB configuration has either no value defined for ``bindIp`` or lists the IP address you are trying to connect to.*

Make sure your MongoDB server is running and open Robomongo.

.. figure:: _static/images/robomongo/robo01.png
    :align: center
    :scale: 70%

    In the upper-left corner, click the icon to open a new connection.

.. figure:: _static/images/robomongo/robo02.png
    :align: center
    :scale: 70%
    
    Click, the *Create* link to set-up a new connection.

.. figure:: _static/images/robomongo/robo03.png
    :align: center
    :scale: 70%

    In the dialog that opens up you can rename the connection. Change the address if you are connecting to a remote server, otherwise leave ``localhost`` there. 

.. figure:: _static/images/robomongo/robo04.png
    :align: center
    :scale: 70%

    If you enabled authorization for your MongoDB server, select the *Authentication* tab and activate the *Perform authentication* option. Then enter the *User Name* (``effektif``) and the *Password* you have chosen before. 

.. figure:: _static/images/robomongo/robo05.png
    :align: center
    :scale: 70%

    If you click *Test*\ , you should see a similar success message. Then click *Save*\ .
    
.. figure:: _static/images/robomongo/robo06.png
    :align: center
    :scale: 70%

    Select the new item in the list and click *Connect*\ .
    
.. figure:: _static/images/robomongo/robo07.png
    :align: center
    :scale: 70%

    You will see the connection in the left-hand panel and the two Effektif databases below it.
