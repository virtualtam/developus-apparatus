Docker - Usage
==============

Basics
------

Install `Docker <https://www.docker.com/>`__, by following the
instruction relevant to your OS / distribution, and start the service.

Search an image on `DockerHub <https://hub.docker.com/>`__
----------------------------------------------------------

.. code:: bash

    $ docker search debian

    NAME            DESCRIPTION                                     STARS   OFFICIAL   AUTOMATED
    ubuntu          Ubuntu is a Debian-based Linux operating s...   2065    [OK]
    debian          Debian is a Linux distribution that's comp...   603     [OK]
    google/debian                                                   47                 [OK]

Show available tags for a repository
------------------------------------

.. code:: bash

    $ curl https://index.docker.io/v1/repositories/debian/tags | python -m json.tool

    % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
    Dload  Upload   Total   Spent    Left  Speed
    100  1283    0  1283    0     0    433      0 --:--:--  0:00:02 --:--:--   433

Sample output:

.. code:: json

    [
        {
            "layer": "85a02782",
            "name": "stretch"
        },
        {
            "layer": "59abecbc",
            "name": "testing"
        },
        {
            "layer": "bf0fd686",
            "name": "unstable"
        },
        {
            "layer": "60c52dbe",
            "name": "wheezy"
        },
        {
            "layer": "c5b806fe",
            "name": "wheezy-backports"
        }
    ]

Pull an image from DockerHub
----------------------------

.. code:: bash

    $ docker pull repository[:tag]

    $ docker pull debian:wheezy
    wheezy: Pulling from debian
    4c8cbfd2973e: Pull complete
    60c52dbe9d91: Pull complete
    Digest: sha256:c584131da2ac1948aa3e66468a4424b6aea2f33acba7cec0b631bdb56254c4fe
    Status: Downloaded newer image for debian:wheezy

Run!
----

Get the Shaarli image
---------------------

.. code:: bash

    $ docker pull shaarli/shaarli
    latest: Pulling from shaarli/shaarli
    32716d9fcddb: Pull complete
    84899d045435: Pull complete
    4b6ad7444763: Pull complete
    e0345ef7a3e0: Pull complete
    5c1dd344094f: Pull complete
    6422305a200b: Pull complete
    7d63f861dbef: Pull complete
    3eb97210645c: Pull complete
    869319d746ff: Already exists
    869319d746ff: Pulling fs layer
    902b87aaaec9: Already exists
    Digest: sha256:f836b4627b958b3f83f59c332f22f02fcd495ace3056f2be2c4912bd8704cc98
    Status: Downloaded newer image for shaarli/shaarli:latest

Create and start a new container from the image
-----------------------------------------------

.. code:: bash

    # map the host's :8000 port to the container's :80 port
    $ docker create -p 8000:80 shaarli/shaarli
    d40b7af693d678958adedfb88f87d6ea0237186c23de5c4102a55a8fcb499101

    # launch the container in the background
    $ docker start d40b7af693d678958adedfb88f87d6ea0237186c23de5c4102a55a8fcb499101
    d40b7af693d678958adedfb88f87d6ea0237186c23de5c4102a55a8fcb499101

    # list active containers
    $ docker ps
    CONTAINER ID  IMAGE            COMMAND               CREATED         STATUS        PORTS                 NAMES
    d40b7af693d6  shaarli/shaarli  /usr/bin/supervisor  15 seconds ago  Up 4 seconds  0.0.0.0:8000->80/tcp  backstabbing_galileo

Stop and destroy a container
----------------------------

.. code:: bash

    $ docker stop backstabbing_galileo  # those docker guys are really rude to physicists!
    backstabbing_galileo

    # check the container is stopped
    $ docker ps
    CONTAINER ID  IMAGE            COMMAND               CREATED         STATUS        PORTS                 NAMES

    # list ALL containers
    $ docker ps -a
    CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS                      PORTS               NAMES
    d40b7af693d6        shaarli/shaarli     /usr/bin/supervisor   5 minutes ago       Exited (0) 48 seconds ago                       backstabbing_galileo

    # destroy the container
    $ docker rm backstabbing_galileo  # let's put an end to these barbarian practices
    backstabbing_galileo

    $ docker ps -a
    CONTAINER ID  IMAGE            COMMAND               CREATED         STATUS        PORTS                 NAMES
