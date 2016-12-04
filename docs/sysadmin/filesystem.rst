Filesystem
==========

Disk usage
----------

df - filesystem usage
~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ df -h

   Filesystem      Size  Used Avail Use% Mounted on
   /dev/sda1       231G   73G  147G  34% /
   udev            1.9G  4.0K  1.9G   1% /dev
   tmpfs           389M  972K  388M   1% /run
   none            5.0M     0  5.0M   0% /run/lock
   none            1.9G   30M  1.9G   2% /run/shm

df - inode usage
~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ df -hi

   Filesystem     Inodes IUsed IFree IUse% Mounted on
   /dev/sda1         15M  2.6M   13M   18% /
   none             486K     2  486K    1% /sys/fs/cgroup
   udev             483K   564  483K    1% /dev
   tmpfs            486K   594  485K    1% /run
   none             486K     3  486K    1% /run/lock
   none             486K     4  486K    1% /run/shm
   none             486K    22  486K    1% /run/user

Partitions
----------

fdisk - list mounted partitions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ fdisk -l

   Disk /dev/sda: 256.1 GB, 256060514304 bytes
   255 heads, 63 sectors/track, 31130 cylinders, total 500118192 sectors
   Units = sectors of 1 * 512 = 512 bytes
   Sector size (logical/physical): 512 bytes / 512 bytes
   I/O size (minimum/optimal): 512 bytes / 512 bytes
   Disk identifier: 0x000681e1
      Device Boot      Start         End      Blocks   Id  System
   /dev/sda1   *        2048   491870207   245934080   83  Linux
   /dev/sda2       491872254   500117503     4122625    5  Extended
   /dev/sda5       491872256   500117503     4122624   82  Linux swap / Solaris

lsblk - list mounted partitions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ lsblk

   NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
   sda      8:0    0 238.5G  0 disk 
   ├─sda1   8:1    0 234.6G  0 part /
   ├─sda2   8:2    0     1K  0 part 
   └─sda5   8:5    0     4G  0 part [SWAP]
   sr0     11:0    1  1024M  0 rom


parted - resize a partition
~~~~~~~~~~~~~~~~~~~~~~~~~~~

See `Using Parted <https://www.gnu.org/software/parted/manual/html_chapter/parted_2.html>`_.

.. code-block:: bash

   $ parted [VOLUME]

   (parted) select /dev/sda
   (parted) unit GB
   (parted) print
   Model: ATA MTFDDAK256MAM-1K (scsi)
   Disk /dev/sda: 256GB
   Sector size (logical/physical): 512B/512B
   Partition Table: msdos
   Number  Start   End    Size    Type      File system     Flags
    1      0.00GB  252GB  252GB   primary   ext4            boot
    2      252GB   256GB  4.22GB  extended
    5      252GB   256GB  4.22GB  logical   linux-swap(v1)
   (parted) resize 5
   Start?  [252GB]? 252
   End?  [256GB]? 256

Disk maintenance
----------------

See:

* `Ext4 (and Ext2/Ext3) Wiki <https://ext4.wiki.kernel.org/index.php/Main_Page>`_
* `How long does badblocks take on a 1TB drive? <http://superuser.com/questions/240641/how-long-does-badblocks-take-on-a-1tb-drive>`_
* `Badblocks (Arch Wiki) <https://wiki.archlinux.org/index.php/Badblocks>`_
* `How To Resize ext3 Partitions Without Losing Data <https://www.howtoforge.com/linux_resizing_ext3_partitions>`_
* `Resize2fs <http://geekpeek.net/resize-filesystem-fdisk-resize2fs/>`_

e2fsck error checking - manual approval
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ e2fsck /dev/sda2

   e2fsck 1.42.9 (4-Feb-2014)
   /dev/sda2 contains a file system with errors, check forced.
   Pass 1: Checking inodes, blocks, and sizes
   Inode 7484927 has imagic flag set.  Clear<y>? yes
   Inode 7484927 has compression flag set on filesystem without compression support.  Clear<y>? yes
   Inode 7484927 has INDEX_FL flag set but is not a directory.
   Clear HTree index<y>? yes
   [...]
   /dev/sda2: ***** FILE SYSTEM WAS MODIFIED *****
   /dev/sda2: 3782336/54214656 files (0.2% non-contiguous), 86369865/216833920 blocks
   root@aaron:~# e2fsck -p /dev/sda2
   /dev/sda2: clean, 3782336/54214656 files, 86369865/216833920 blocks

e2fsck error checking - auto approval
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ e2fsck -y /dev/sda2
   /dev/sda2: clean, 3782336/54214656 files, 86369865/216833920 blocks

forced inode auto check & optimization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ e2fsck -p -f -D /dev/sda2
   /dev/sda2: 3782336/54214656 files (0.2% non-contiguous), 86367938/216833920 blocks
