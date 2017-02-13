Processes
=========

See http://www.binarytides.com/linux-ps-command/ for more examples!

Running
-------

top - show resource usage & most consuming processes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ top


htop - show resource usage & most consuming processes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ htop

ps - list all running processes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ ps -ef    # *nix style

   $ ps aux    # BSD style

ps - process tree
~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ ps faux

   USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
   root         2  0.0  0.0      0     0 ?        S    09:02   0:00 [kthreadd]
   root         3  0.0  0.0      0     0 ?        S    09:02   0:11  \_ [ksoftirqd/0]
   root         4  0.0  0.0      0     0 ?        S    09:02   0:41  \_ [ktimersoftd/0]
   root         6  0.0  0.0      0     0 ?        S<   09:02   0:00  \_ [kworker/0:0H]
   root         8  0.0  0.0      0     0 ?        S    09:02   0:16  \_ [rcu_preempt]
   root         9  0.0  0.0      0     0 ?        S    09:02   0:00  \_ [rcu_sched]

ps - list by user
~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ ps -f -u http

   UID        PID  PPID  C STIME TTY          TIME CMD
   http      2546  2451  0 09:03 ?        00:00:00 /usr/bin/httpd -k start -DFOREGROUND
   http      2550  2451  0 09:03 ?        00:00:00 /usr/bin/httpd -k start -DFOREGROUND
   http      2552  2451  0 09:03 ?        00:00:00 /usr/bin/httpd -k start -DFOREGROUND


ps - list by process name
~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ ps -C python3

     PID TTY          TIME CMD
   18667 pts/3    00:00:01 python3

pgrep - find processes by name
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ pgrep -a watchdog

   10 watchdog/0
   11 watchdog/1
   16 watchdog/2
   21 watchdog/3

Zombies and defuncts
--------------------

ps - display zombie processes' PIDs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ ps aux | awk '{ print $8 " " $2 }' | grep -w Z

ps - display a family tree (in case we've a defunct parent/child job)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ ps -aef
