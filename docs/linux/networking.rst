Networking
==========

Nmap / Zenmap
-------------

======== ================================================================
State    Meaning
======== ================================================================
closed   the port is open, but no service is running on the remote server
filtered the port is blocked by a firewall
open     the port is open, and there is a service running
======== ================================================================

nmap - open
~~~~~~~~~~~

.. code-block:: bash

   $ nmap gerrit.example.com -p 29418 -Pn

   Starting Nmap 6.40 ( http://nmap.org ) at 2015-10-07 15:46 CEST
   Nmap scan report for gerrit.example.com (163.33.26.149)
   Host is up (0.072s latency).
   rDNS record for 163.33.26.149: irsgerrit001.ir.example.com
   PORT      STATE SERVICE
   29418/tcp open  unknown

   Nmap done: 1 IP address (1 host up) scanned in 0.17 seconds

nmap - filtered
~~~~~~~~~~~~~~~

.. code-block:: bash

   $ nmap gerrit.dev.example.com -p 29418 -Pn

   Starting Nmap 6.40 ( http://nmap.org ) at 2015-10-07 15:50 CEST
   Nmap scan report for gerrit.dev.example.com (10.96.8.73)
   Host is up.
   rDNS record for 10.96.8.73: fmygit6003.fm.example.com
   PORT      STATE    SERVICE
   29418/tcp filtered unknown

   Nmap done: 1 IP address (1 host up) scanned in 2.11 seconds

nmap - scan several ports, and get information on the remote services
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ nmap server.domain.example.com -p 22,80,5432,8080 -Pn -sV

   Starting Nmap 6.40 ( http://nmap.org ) at 2015-10-07 16:01 CEST
   Nmap scan report for server.domain.example.com (10.237.188.47)
   Host is up (0.062s latency).
   rDNS record for 10.225.127.36: server.domain.example.com
   PORT     STATE  SERVICE    VERSION
   22/tcp   open   ssh        OpenSSH 5.9p1 Debian 5ubuntu1.7 (Ubuntu Linux; protocol 2.0)
   80/tcp   open   http       nginx 1.1.19
   5432/tcp closed postgresql
   8080/tcp open   tcpwrapped
   Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

   Service detection performed. Please report any incorrect results at http://nmap.org/submit/ .
   Nmap done: 1 IP address (1 host up) scanned in 6.52 seconds
