Environment variables
=====================

Some places to look at to define/change variables, and which contents to expect.

Global
------

``/etc/environment``
   global variables: HTTP(S) & SOCKS proxies, custom ``PATH``

Session
-------

``/etc/profile``
   default session variables

``/etc/profile.d/*.sh``
   extra session variables

``~/.xprofile``
   user-defined X11 settings -mostly for lightweight session managers (i3, awesome-wm, etc.)

``~/.profile``
   user-defined variables -superseded by ``~/.bash_profile``

Bash
^^^^

``/etc/bash.bashrc``
   default Bash settings

``~/.bash_profile``
   user-defined Bash settings -mostly for X11/startup stuff

``~/.bashrc``
   user-defined Bash configuration (main file)

``~/.bash_aliases``
   user-defined Bash command aliases and functions

Superusers
----------

``/etc/login.defs``
   console & login configuration

``/etc/sudoers``
   sudoers configuration -*always* use ``visudo`` to edit!

SSH
---

``/etc/ssh/sshd_config``
   server-side, can allow the client to pass variables

``/etc/ssh/ssh_config``
   client-side, can send variables to servers

SaltStack
---------

``/etc/default/salt-minion`` (deprecated in recent versions)
   can be used to source ``/etc/environment`` -not always included in the distro's packages

``/etc/salt/minion``
   HTTP(S) proxy configuration
