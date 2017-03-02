LXC
===

About
-----

* `List of all manpages <https://linuxcontainers.org/lxc/manpages/>`_
* `Standard image repository <https://images.linuxcontainers.org/images/>`_
* `Getting started with LXC <https://www.flockport.com/lxc-guide/>`_, 2014, Flockport

Linux templates
~~~~~~~~~~~~~~~

A template is a script allowing to populate a container's pseudo-filesystem
for it to run a given Linux distribution.

To display a template's options:

.. code-block:: bash

   $ lxc-create -t <template> -h

For more information:

.. code-block:: bash

   $ emacs /usr/share/lxc/templates/lxc-<template>

Useful commands
~~~~~~~~~~~~~~~

List existing containers and their network address (if running):

.. code-block:: bash

   $ lxc-ls --fancy

   NAME                STATE   AUTOSTART GROUPS IPV4       IPV6 
   example-centos-test RUNNING 0         -      10.0.3.176 -    
   example-ubuntu-test RUNNING 0         -      10.0.3.179 -

Container lifecycle
-------------------

CentOS 7
~~~~~~~~

Prerequisite: ``yum``

.. code-block:: bash

   $ lxc-create -t centos -n example-centos-test -- -R 7
   $ lxc-start -n example-centos-test
   $ lxc-attach -n example-centos-test
   # do something with the container
   $ lxc-stop -n example-centos-test
   $ lxc-destroy -n example-centos-test

Debian 8
~~~~~~~~

Prerequisite: ``debootstrap``

.. code-block:: bash

   $ lxc-create -t debian -n example-debian-test
   $ lxc-start -n example-debian-test
   $ lxc-attach -n example-debian-test
   # do something with the container
   $ lxc-stop -n example-debian-test
   $ lxc-destroy -n example-debian-test

Ubuntu 16.04
~~~~~~~~~~~~

Prerequisite: ``debootstrap`` (recent version)

.. code-block:: bash

   $ lxc-create -t ubuntu -n example-ubuntu-test -- -r xenial
   $ lxc-start -n example-ubuntu-test
   $ lxc-attach -n example-ubuntu-test
   # do something with the container
   $ lxc-stop -n example-ubuntu-test
   $ lxc-destroy -n example-ubuntu-test
