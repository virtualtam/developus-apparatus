OpenVZ
======

* `OpenVZ philosophy <https://wiki.openvz.org/User_Guide/OpenVZ_Philosophy>`__

Container management
--------------------

* `Operations on containers <http://wiki.openvz.org/User_Guide/Operations_on_Containers>`__
* `Managing resources <https://wiki.openvz.org/User_Guide/Managing_Resources>`__

Template creation
-----------------

* `Debian template creation <http://wiki.openvz.org/Debian_template_creation>`__
* `Updating Debian template <https://openvz.org/Updating_Debian_template>`__

Proxmox
-------

* `Debian Appliance Builder <http://pve.proxmox.com/wiki/Debian_Appliance_Builder>`__
* `Template naming convention <http://pve.proxmox.com/wiki/Template_naming_convention>`__

Scripts
-------

mkvztpl.sh
~~~~~~~~~~

Creates an OpenVZ template from an existing container instance.

.. literalinclude:: ../../scripts/mkvztpl.sh
   :language: bash
   :caption: mkvztpl.sh

Usage:

.. code:: bash

    $ ./mkvztpl.sh <CT_ID> <TPL_NAME>
