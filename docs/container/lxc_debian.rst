LXC - Debian installation
=========================

Packages
--------

Let's follow the `Debian LXC guide <https://wiki.debian.org/LXC>`_!

.. code-block:: bash

   $ aptitude update

   # let's get a decent LXC version ;-)
   $ aptitude -t jessie-backports install lxc

   # required for recent Debian/Ubuntu containers
   $ aptitude -t jessie-backports install debootstrap

   # required for CentOS containers
   $ aptitude install yum


Network configuration
---------------------


.. code-block:: bash
   :caption: /etc/default/lxc-net

   USE_LXC_BRIDGE="true"


.. code-block:: bash
   :caption: /etc/lxc/default.conf

   lxc.network.type = veth
   lxc.network.link = lxcbr0
   lxc.network.flags = up
   lxc.network.hwaddr = 00:16:3e:xx:xx:xx

Applying the modifications
--------------------------

Restart ``lxc-net`` so the modifications are taken into account, and the ``lxcbr0`` network
bridge is created:

.. code-block:: bash

   $ systemctl restart lxc-net

   $ ip -4 addr show lxcbr0
   5: lxcbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
       inet 10.0.3.1/24 scope global lxcbr0
          valid_lft forever preferred_lft forever
