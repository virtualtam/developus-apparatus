APT - Debian & Ubuntu packages
==============================

Resources
---------

* `Pacman Rosetta <https://wiki.archlinux.org/index.php/Pacman/Rosetta>`_ -
  Compendium of usual commands for the main Linux package managers
  (apt, dnf, pacman, yum)

Man pages
~~~~~~~~~

* `apt <http://manpages.ubuntu.com/manpages/xenial/en/man8/apt.8.html>`_

    * `apt-cache <http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-cache.8.html>`_
    * `apt-file <http://manpages.ubuntu.com/manpages/xenial/en/man1/apt-file.1.html>`_
    * `apt-get <http://manpages.ubuntu.com/manpages/xenial/en/man8/apt-get.8.html>`_

* `aptitude <http://linux.die.net/man/8/aptitude>`_
* `dpkg <http://manpages.ubuntu.com/manpages/xenial/en/man1/dpkg.1.html>`_
* `gdebi <http://manpages.ubuntu.com/manpages/xenial/en/man1/gdebi.1.html>`_

Upgrading packages
------------------

aptitude - update package metadata
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   # update package metadata using:
   # - /etc/apt/sources.list
   # - /etc/apt/sources.list.d/*.list
   $ aptitude update

   [...]
   Get: 1 http://security.debian.org jessie/updates InRelease [63.1 kB]
   Ign http://ftp.debian.org jessie InRelease
   Hit http://repo.saltstack.com jessie InRelease
   Get: 2 http://ftp.debian.org jessie-updates InRelease [142 kB]
   Get: 3 http://security.debian.org jessie/updates/main amd64 Packages [231 kB]
   Hit http://repo.saltstack.com jessie/main amd64 Packages
   [...]
   Fetched 12.3 MB in 9s (1,334 kB/s)

   Current status: 34 updates [+28].

aptitude - upgrade all packages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ aptitude upgrade

   The following packages will be upgraded:
     apt apt-utils base-files git git-man gnupg gpgv initramfs-tools libapt-inst1.5 libapt-pkg4.12 libc-bin libc-dev-bin libc6 libc6-dev libglib2.0-0 libhogweed2 libnettle4 libpam-modules libpam-modules-bin
     libpam0g libpcre3 libsndfile1 libsystemd0 libudev1 linux-libc-dev locales multiarch-support salt-common salt-minion systemd systemd-sysv tzdata tzdata-java udev
   The following packages are RECOMMENDED but will NOT be installed:
     busybox busybox-static dbus gnupg-curl libpam-systemd
   34 packages upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
   Need to get 32.6 MB of archives. After unpacking 71.7 kB will be freed.
   Do you want to continue? [Y/n/?] y
   Get: 1 http://ftp.debian.org/debian/ jessie/main base-files amd64 8+deb8u4 [78.0 kB]
   Get: 2 http://repo.saltstack.com/apt/debian/8/amd64/latest/ jessie/main salt-minion all 2015.8.8+ds-2 [24.5 kB]
   Get: 3 http://ftp.debian.org/debian/ jessie/main libc6-dev amd64 2.19-18+deb8u4 [2,002 kB]
   Get: 4 http://repo.saltstack.com/apt/debian/8/amd64/latest/ jessie/main salt-common all 2015.8.8+ds-2 [3,139 kB]
   Get: 5 http://ftp.debian.org/debian/ jessie/main libc-dev-bin amd64 2.19-18+deb8u4 [237 kB]
   [...]
   Fetched 32.6 MB in 16s (1,939 kB/s)
   Extracting templates from packages: 100%
   Preconfiguring packages ...
   (Reading database ... 37422 files and directories currently installed.)
   Preparing to unpack .../base-files_8+deb8u4_amd64.deb ...
   Unpacking base-files (8+deb8u4) over (8+deb8u3) ...
   Processing triggers for install-info (5.2.0.dfsg.1-6) ...
   Processing triggers for man-db (2.7.0.2-5) ...
   Setting up base-files (8+deb8u4) ...
   Installing new version of config file /etc/debian_version ...
   (Reading database ... 37422 files and directories currently installed.)
   [...]
   Processing triggers for libc-bin (2.19-18+deb8u4) ...
   Processing triggers for initramfs-tools (0.120+deb8u1) ...

   Current status: 0 updates [-34].

aptitude - upgrade some packages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ aptitude upgrade git git-email git-man

   The following packages will be upgraded:
     git git-email git-man
   3 packages upgraded, 0 newly installed, 0 to remove and 231 not upgraded.
   Need to get 3,310 kB of archives. After unpacking 311 kB will be used.
   Do you want to continue? [Y/n/?] y
   Get: 1 http://archive.ubuntu.com/ubuntu/ trusty-updates/main git-man all 1:1.9.1-1ubuntu0.3 [699 kB]
   Get: 2 http://archive.ubuntu.com/ubuntu/ trusty-updates/main git amd64 1:1.9.1-1ubuntu0.3 [2,586 kB]
   Get: 3 http://archive.ubuntu.com/ubuntu/ trusty-updates/universe git-email all 1:1.9.1-1ubuntu0.3 [25.5 kB]
   Fetched 3,310 kB in 5s (601 kB/s)
   (Reading database ... 159204 files and directories currently installed.)
   Preparing to unpack .../git-man_1%3a1.9.1-1ubuntu0.3_all.deb ...
   Unpacking git-man (1:1.9.1-1ubuntu0.3) over (1:1.9.1-1ubuntu0.1) ...
   Preparing to unpack .../git_1%3a1.9.1-1ubuntu0.3_amd64.deb ...
   Unpacking git (1:1.9.1-1ubuntu0.3) over (1:1.9.1-1ubuntu0.1) ...
   Preparing to unpack .../git-email_1%3a1.9.1-1ubuntu0.3_all.deb ...
   Unpacking git-email (1:1.9.1-1ubuntu0.3) over (1:1.9.1-1ubuntu0.1) ...
   Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
   Setting up git-man (1:1.9.1-1ubuntu0.3) ...
   Setting up git (1:1.9.1-1ubuntu0.3) ...
   Setting up git-email (1:1.9.1-1ubuntu0.3) ...

   Current status: 231 updates [-3].

Querying packages
-----------------

aptitude - search a package
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ aptitude search rxvt-unicode

   p   rxvt-unicode                                    - RXVT-like terminal emulator with Unicode support
   p   rxvt-unicode:i386                               - RXVT-like terminal emulator with Unicode support
   p   rxvt-unicode-256color                           - multi-lingual terminal emulator with Unicode support for X
   p   rxvt-unicode-256color:i386                      - multi-lingual terminal emulator with Unicode support for X
   p   rxvt-unicode-lite                               - RXVT-like terminal emulator with basic Unicode support
   p   rxvt-unicode-lite:i386                          - RXVT-like terminal emulator with basic Unicode support
   p   rxvt-unicode-ml                                 - multi-lingual terminal emulator -- transitional package
   p   rxvt-unicode-ml:i386                            - multi-lingual terminal emulator -- transitional package

aptitude - show package metadata
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ aptitude show rxvt-unicode-256color

   Package: rxvt-unicode-256color
   State: not installed
   Version: 9.19-1
   Priority: optional
   Section: universe/x11
   Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
   Architecture: amd64
   Uncompressed Size: 3,174 k
   Depends: libc6 (>= 2.17), libfontconfig1 (>= 2.9.0), libgcc1 (>= 1:4.1.1), libgdk-pixbuf2.0-0 (>=
            2.22.0), libglib2.0-0 (>= 2.12.0), libperl5.18 (>= 5.18.1), libstartup-notification0 (>= 0.2),
            libx11-6, libxft2 (> 2.1.1), libxrender1, base-passwd (>= 2.0.3.4), ncurses-term (>= 5.8-1)
   Recommends: ttf-dejavu, fonts-vlgothic | fonts-japanese-gothic
   Conflicts: rxvt-unicode, rxvt-unicode, rxvt-unicode-256color
   Provides: rxvt-unicode, x-terminal-emulator
   Description: multi-lingual terminal emulator with Unicode support for X11

   Homepage: http://software.schmorp.de/pkg/rxvt-unicode.html

dpkg - search installed packages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ dpkg --list *udev*

   Desired=Unknown/Install/Remove/Purge/Hold
   | Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
   |/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
   ||/ Name                 Version         Architecture    Description
   +++-====================-===============-===============-=============================================
   ii  libgudev-1.0-0:amd64 1:204-5ubuntu20 amd64           GObject-based wrapper library for libudev
   un  libudev0             <none>          <none>          (no description available)
   ii  libudev1:amd64       204-5ubuntu20.1 amd64           libudev shared library
   ii  libudev1:i386        204-5ubuntu20.1 i386            libudev shared library
   ii  udev                 204-5ubuntu20.1 amd64           /dev/ and hotplug management daemon

dpkg - show local package metadata
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ dpkg --info /var/cache/apt/archives/libudev1_204-5ubuntu20.18_amd64.deb

   new debian package, version 2.0.
   size 33514 bytes: control archive=1549 bytes.
       612 bytes,    15 lines      control
       216 bytes,     3 lines      md5sums
       135 bytes,     7 lines   *  postinst             #!/bin/sh
       132 bytes,     7 lines   *  postrm               #!/bin/sh
        49 bytes,     2 lines      shlibs
      3982 bytes,    93 lines      symbols
   Package: libudev1
   Source: systemd
   Version: 204-5ubuntu20.18
   Architecture: amd64
   Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
   Installed-Size: 133
   Pre-Depends: multiarch-support
   Depends: libc6 (>= 2.17), libcgmanager0, libdbus-1-3 (>= 1.0.2), libnih-dbus1 (>= 1.0.0), libnih1 (>= 1.0.0)
   Section: libs
   Priority: important
   Multi-Arch: same
   Homepage: http://www.freedesktop.org/wiki/Software/systemd
   Description: libudev shared library
    This library provides access to udev device information.
   Original-Maintainer: Debian systemd Maintainers <pkg-systemd-maintainers@lists.alioth.debian.org>
