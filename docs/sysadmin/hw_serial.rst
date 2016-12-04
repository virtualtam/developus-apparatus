Hardware - Serial port (RS-232)
===============================

Device baud rate
----------------

stty - read a value
~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ stty -F /dev/ttyUSB0

   speed 9600 baud; line = 0;
   min = 1; time = 0;
   -brkint -icrnl -imaxbel
   -opost -onlcr
   -isig -icanon -echo 

stty - set a value
~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ stty -F /dev/ttyUSB0 115200

   speed 115200 baud; line = 0;
   min = 1; time = 0;
   -brkint -icrnl -imaxbel
   -opost -onlcr
   -isig -icanon -echo 
