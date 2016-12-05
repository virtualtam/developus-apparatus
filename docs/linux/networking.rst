Networking
==========

* `Linux Home Networking <http://www.linuxhomenetworking.com/>`_

DNS records
-----------

Common record types
~~~~~~~~~~~~~~~~~~~

See the `list of DNS record types <https://en.wikipedia.org/wiki/List_of_DNS_record_types>`_
for more information.

======  =============== ======================================
Type	Description	Function
======  =============== ======================================
A	Address	        Maps a hostname to an IP
CNAME	Canonical Name	Alias to another hostname
MX	Mail eXchange	Maps a domain to a mail transfer agent
SRV	SeRVice locator	Generalized record type
======  =============== ======================================

dig
~~~

.. code-block:: bash

   $ dig freebsd.org

   ; <<>> DiG 9.11.0-P1 <<>> freebsd.org
   ;; global options: +cmd
   ;; Got answer:
   ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 1134
   ;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

   ;; QUESTION SECTION:
   ;freebsd.org.			IN	A

   ;; ANSWER SECTION:
   freebsd.org.		3600	IN	A	8.8.178.110

   ;; Query time: 58 msec
   ;; SERVER: 192.168.1.1#53(192.168.1.1)
   ;; WHEN: lun. déc. 05 19:36:05 CET 2016
   ;; MSG SIZE  rcvd: 45

nslookup
~~~~~~~~

.. code-block:: bash

   $ nslookup freebsd.org

   Server:	192.168.1.1
   Address:	192.168.1.1#53

   Non-authoritative answer:
   Name:	freebsd.org
   Address:     8.8.178.110
   Name:	freebsd.org
   Address:     2001:1900:2254:206a::50:0

Local lookup, e.g. when using `dnsmasq <http://www.thekelleys.org.uk/dnsmasq/doc.html>`_
to cache DNS results:

.. code-block:: bash

   $ nslookup linux.org localhost

   Server:	localhost
   Address:	::1#53

   Non-authoritative answer:
   Name:	linux.org
   Address:     192.243.104.10

Port scanning - Nmap / Zenmap
-----------------------------

* `nmap.org <https://nmap.org/>`_
* `Zenmap <https://nmap.org/zenmap/>`_ GUI for Windows

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

Routing
-------

traceroute - show routes between two hosts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ traceroute example.com

   traceroute to example.com (166.70.10.23), 30 hops max, 60 byte packets
    1  176.221.87.1 (176.221.87.1)  1.474 ms  1.444 ms  1.390 ms
    2  f126.broadband2.quicknet.se (92.43.37.126)  10.047 ms  19.868 ms  23.156 ms
    3  10.5.12.1 (10.5.12.1)  24.098 ms  24.340 ms  25.311 ms
    4  212.247.178.9 (212.247.178.9)  25.777 ms  27.184 ms  27.625 ms
    5  vst-ncore-1.bundle-ether1.tele2.net (130.244.39.46)  30.632 ms  31.610 ms  32.194 ms
    6  kst5-core-1.bundle-ether6.tele2.net (130.244.71.178)  33.608 ms  15.274 ms  16.449 ms
    7  kst5-peer-1.ae0-unit0.tele2.net (130.244.205.125) 252.53 ms 11.169 ms 12.158 ms
    8  avk6-peer-1.ae0-unit0.tele2.net (130.244.64.71)  19.661 ms  25.765 ms  26.730 ms
    9  peer-as3257.avk6.tele2.net (130.244.200.106)  25.390 ms  24.863 ms xe-5-0-0.nyc30.ip4.tinet.net (89.149.181.109)  23.626 ms
   10  fortress-gw.ip4.tinet.net (216.221.158.90)  29.943 ms  31.112 ms  29.002 ms
   11  208.116.63.254 (208.116.63.254)  32.102 ms  29.862 ms  29.337 ms

iptables - show local routes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ sudo iptables -L

   Chain INPUT (policy ACCEPT)
   target     prot opt source               destination         

   Chain FORWARD (policy ACCEPT)
   target     prot opt source               destination         
   DOCKER-ISOLATION  all  --  anywhere             anywhere            
   DOCKER     all  --  anywhere             anywhere            
   ACCEPT     all  --  anywhere             anywhere             ctstate RELATED,ESTABLISHED
   ACCEPT     all  --  anywhere             anywhere            
   ACCEPT     all  --  anywhere             anywhere            

   Chain OUTPUT (policy ACCEPT)
   target     prot opt source               destination         

   Chain DOCKER (1 references)
   target     prot opt source               destination         

   Chain DOCKER-ISOLATION (1 references)
   target     prot opt source               destination         
   RETURN     all  --  anywhere             anywhere

Sockets
-------

lsof - list active sockets
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ lsof -Pnl +M -i

   rpcbind    1192        0    8u  IPv4    28745      0t0  TCP *:111[portmapper] (LISTEN)
   rpcbind    1192        0   11u  IPv6    28748      0t0  TCP *:111[portmapper] (LISTEN)
   cupsd      1221        0    8u  IPv6 16414694      0t0  TCP [::1]:631 (LISTEN)
   rpc.statd  1238      116   11u  IPv6    11496      0t0  TCP *:55536 (LISTEN)
   sshd       1295        0    3r  IPv4     1511      0t0  TCP *:22 (LISTEN)
   ypbind     1395        0    5u  IPv4    28818      0t0  TCP *:724[ypbind] (LISTEN)
   nrpe       1687      119    4u  IPv4    28924      0t0  TCP *:5666 (LISTEN)
   nginx      1715        0   10u  IPv4     1720      0t0  TCP *:80 (LISTEN)
