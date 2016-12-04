Hardware - udev rules
=====================

Udev rules are located under ``/etc/udev/rules.d``. A rule matches a set of devices,
according to their vendor and product IDs, and allows to set attributes that will be
applied when the device is plugged:

* device ownership (group/user)
* read/write permissions
* additional mount points
* ...

Usage
-----

Reload rules
~~~~~~~~~~~~

.. code-block:: bash

   $ udevadm control --reload-rules

Trigger device detection
~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ udevadm trigger
