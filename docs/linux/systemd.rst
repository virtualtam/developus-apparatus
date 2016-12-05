systemd
=======

systemctl - daemon management
-----------------------------

.. note::

   Some distributions (Debian, Ubuntu & derivatives) automatically enable and start
   daemons after they have been installed, whereas other ones let the user manage
   which units are enabled and started (Archlinux, CentOS).

enable
~~~~~~

Creates a symlink from ``/etc/systemd/system/<my_service>``
to ``/lib/systemd/system/<my_service>`` so ``my_service`` will be launched after booting.

.. code-block:: bash

   $ root@icinga:~# systemctl enable ssh.service 

   Synchronizing state for ssh.service with sysvinit using update-rc.d...
   Executing /usr/sbin/update-rc.d ssh defaults
   Executing /usr/sbin/update-rc.d ssh enable
   Created symlink from /etc/systemd/system/sshd.service to /lib/systemd/system/ssh.service.

disable
~~~~~~~

.. code-block:: bash

   $ root@icinga:~# systemctl disable ssh.service 

   Synchronizing state for ssh.service with sysvinit using update-rc.d...
   Executing /usr/sbin/update-rc.d ssh defaults
   Executing /usr/sbin/update-rc.d ssh disable
   Removed symlink /etc/systemd/system/sshd.service.

start / stop / restart
~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ root@icinga:~# systemctl start php5-fpm.service 

.. code-block:: bash

   $ root@icinga:~# systemctl stop nginx.service

.. code-block:: bash

   $ root@icinga:~# systemctl restart nginx.service

list-units - active services
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ root@icinga:~# systemctl list-units -t service

    UNIT                             LOAD   ACTIVE SUB     DESCRIPTION
    console-getty.service            loaded active running Console Getty
    cron.service                     loaded active running Regular background program processing daemon
    exim4.service                    loaded active running LSB: exim Mail Transport Agent
    getty-static.service             loaded active exited  getty on tty2-tty6 if dbus and logind are not available
    getty@tty1.service               loaded active running Getty on tty1
    getty@tty2.service               loaded active running Getty on tty2
    getty@tty3.service               loaded active running Getty on tty3
    getty@tty4.service               loaded active running Getty on tty4
    getty@tty5.service               loaded active running Getty on tty5
    getty@tty6.service               loaded active running Getty on tty6
    icinga2.service                  loaded active running Icinga host/service/network monitoring system
    modules_dep.service              loaded active exited  LSB: modules.dep creation.
    nagios-nrpe-server.service       loaded active running LSB: Start/Stop the Nagios remote plugin execution daemon
    networking.service               loaded active running LSB: Raise network interfaces.
    nginx.service                    loaded active running A high performance web server and a reverse proxy server
    ntp.service                      loaded active exited  LSB: Start NTP daemon
    php5-fpm.service                 loaded active running The PHP FastCGI Process Manager
    postgresql.service               loaded active exited  PostgreSQL RDBMS
    postgresql@9.4-main.service      loaded active running PostgreSQL Cluster 9.4-main
    quota.service                    loaded active exited  Check And Enable File System Quotas
   ●rc-local.service                 loaded failed failed  /etc/rc.local Compatibility
    rsyslog.service                  loaded active running System Logging Service
    ssh.service                      loaded active running OpenBSD Secure Shell server
    systemd-journald.service         loaded active running Journal Service
    systemd-random-seed.service      loaded active exited  Load/Save Random Seed
    systemd-remount-fs.service       loaded active exited  Remount Root and Kernel File Systems
    systemd-resolved.service         loaded active running Network Name Resolution
    systemd-setup-dgram-qlen.service loaded active exited  Increase datagram queue length
    systemd-sysctl.service           loaded active exited  Apply Kernel Variables
    systemd-tmpfiles-setup.service   loaded active exited  Create Volatile Files and Directories
    systemd-udev-trigger.service     loaded active exited  udev Coldplug all Devices
    systemd-udevd.service            loaded active running udev Kernel Device Manager
    systemd-update-utmp.service      loaded active exited  Update UTMP about System Boot/Shutdown
    systemd-user-sessions.service    loaded active exited  Permit User Sessions
    udev-finish.service              loaded active exited  Copy rules generated while the root was ro

   LOAD   = Reflects whether the unit definition was properly loaded.
   ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
   SUB    = The low-level unit activation state, values depend on unit type.

   35 loaded units listed. Pass --all to see loaded but inactive units, too.
   To show all installed unit files use 'systemctl list-unit-files'.

status
~~~~~~

.. code-block:: bash

   $ root@icinga:~# systemctl status php5-fpm.service 

   ● php5-fpm.service - The PHP FastCGI Process Manager
      Loaded: loaded (/lib/systemd/system/php5-fpm.service; enabled)
      Active: active (running) since Thu 2015-09-03 11:49:59 CEST; 5h 18min ago
    Main PID: 31259 (php5-fpm)
      Status: "Processes active: 0, idle: 2, Requests: 52, slow: 0, Traffic: 0req/sec"
      CGroup: /system.slice/php5-fpm.service
              ├─31259 php-fpm: master process (/etc/php5/fpm/php-fpm.conf)
              ├─31260 php-fpm: pool www
              └─31261 php-fpm: pool www
   Sep 03 11:49:59 icinga systemd[1]: Started The PHP FastCGI Process Manager.

status - units matching a pattern
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ root@icinga:~# systemctl status po*

   ● postgresql.service - PostgreSQL RDBMS
      Loaded: loaded (/lib/systemd/system/postgresql.service; enabled)
      Active: active (exited) since Thu 2015-09-03 11:53:06 CEST; 5h 50min ago
    Main PID: 31552 (code=exited, status=0/SUCCESS)
      CGroup: /system.slice/postgresql.service
   
   Sep 03 11:53:06 icinga systemd[1]: Started PostgreSQL RDBMS.

   ● postgresql@9.4-main.service - PostgreSQL Cluster 9.4-main
      Loaded: loaded (/lib/systemd/system/postgresql@.service; disabled)
      Active: active (running) since Thu 2015-09-03 11:53:06 CEST; 5h 50min ago
    Main PID: 31520 (postgres)
      CGroup: /system.slice/system-postgresql.slice/postgresql@9.4-main.service
              ├─31520 /usr/lib/postgresql/9.4/bin/postgres -D /var/lib/postgresql/9.4/main -c config_file=/etc/postgresql/9.4/main/postgresql.conf
              ├─31522 postgres: checkpointer process   
              ├─31523 postgres: writer process   
              ├─31524 postgres: wal writer process   
              ├─31525 postgres: autovacuum launcher process   
              ├─31526 postgres: stats collector process   
              └─31534 postgres: icinga2idopgsql icinga2idopgsql ::1(36874) idle in transaction

   Sep 03 11:53:06 icinga systemd[1]: Started PostgreSQL Cluster 9.4-main.

journalctl
----------

journalctl - logs for a given daemon
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ root@icinga:~# journalctl -b -u ssh.service 

   -- Logs begin at Tue 2015-09-01 17:27:04 CEST, end at Thu 2015-09-03 17:21:06 CEST. --
   Sep 01 17:27:04 icinga systemd[1]: Starting OpenBSD Secure Shell server...
   Sep 01 17:27:04 icinga systemd[1]: Started OpenBSD Secure Shell server.
   Sep 01 17:27:04 icinga sshd[172]: Server listening on 0.0.0.0 port 22.
   Sep 01 17:27:04 icinga sshd[172]: Server listening on :: port 22.
   Sep 01 17:27:04 icinga sshd[172]: Could not load host key: /etc/ssh/ssh_host_rsa_key
   Sep 01 17:27:04 icinga sshd[172]: Could not load host key: /etc/ssh/ssh_host_dsa_key
   Sep 01 17:27:04 icinga sshd[172]: Could not load host key: /etc/ssh/ssh_host_ecdsa_key
   Sep 01 17:27:04 icinga sshd[172]: Could not load host key: /etc/ssh/ssh_host_ed25519_key
   Sep 01 17:27:05 icinga systemd[1]: Stopping OpenBSD Secure Shell server...
   Sep 01 17:27:05 icinga systemd[1]: Starting OpenBSD Secure Shell server...
   Sep 01 17:27:05 icinga systemd[1]: Started OpenBSD Secure Shell server.
   Sep 01 17:27:05 icinga sshd[203]: Server listening on 0.0.0.0 port 22.
   Sep 01 17:27:05 icinga sshd[203]: Server listening on :: port 22.
   Sep 01 17:50:24 icinga sshd[1566]: Accepted password for root from 10.102.167.30 port 39590 ssh2
   Sep 01 17:50:24 icinga sshd[1566]: pam_unix(sshd:session): session opened for user root by (uid=0)

journalctl - list system boots
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ root@icinga:~# journalctl --list-boots 

   0 897795c2801a4197bbe425f0d6d59ce3 Tue 2015-09-01 17:27:04 CEST—Thu 2015-09-03 17:24:06 CEST
