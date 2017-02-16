PostgreSQL
==========

* PostgreSQL manuals

  * `current <https://www.postgresql.org/docs/current/static/index.html>`_
  * `9.6 <https://www.postgresql.org/docs/9.6/static/index.html>`_
  * `9.4 <https://www.postgresql.org/docs/9.4/static/index.html>`_

* `psql <https://www.postgresql.org/docs/current/static/app-psql.html>`_
* `Debian overview <https://wiki.debian.org/PostgreSql>`_

Basics
------

psql - Command-Line Interface (CLI)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

psql - start
""""""""""""

.. code-block:: bash

   root@ic-tpl:~$ su - postgres
   postgres@ic-tpl:~$ psql
   psql (9.4.3)
   Type "help" for help.

   postgres=#


psql - SQL help
"""""""""""""""

.. code-block:: bash
   
   # get help on SQL instructions
   postgres=# \h
   Available help:
     ABORT                            ALTER TYPE                       CREATE SCHEMA
     ALTER AGGREGATE                  ALTER USER                       CREATE SEQUENCE
     [...]
   
   postgres=# \h DROP TABLE
   Command:     DROP TABLE
   Description: remove a table
   Syntax:
   DROP TABLE [ IF EXISTS ] name [, ...] [ CASCADE | RESTRICT ]


psql - Get help on the CLI (basckslash commands)
""""""""""""""""""""""""""""""""""""""""""""""""

.. code-block:: bash

   postgres=# \?

   General
     \copyright             show PostgreSQL usage and distribution terms
     \g [FILE] or ;         execute query (and send results to file or |pipe)
     \gset [PREFIX]         execute query and store results in psql variables
     \h [NAME]              help on syntax of SQL commands, * for all commands
     \q                     quit psql
     \watch [SEC]           execute query every SEC seconds
   Query Buffer
     \e [FILE] [LINE]       edit the query buffer (or file) with external editor
     \ef [FUNCNAME [LINE]]  edit function definition with external editor
     \p                     show the contents of the query buffer
     \r                     reset (clear) the query buffer
     \s [FILE]              display history or save it to file
     \w FILE                write query buffer to file
     [...]

Users and roles
---------------

Databases
~~~~~~~~~

List databases
""""""""""""""

.. code-block:: bash

   postgres=# \l
                                        List of databases
         Name       |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges   
   -----------------+----------+----------+-------------+-------------+-----------------------
    icinga2_ido     | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
    postgres        | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
    template0       | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
                    |          |          |             |             | postgres=CTc/postgres
    template1       | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
                    |          |          |             |             | postgres=CTc/postgres
   (4 rows)

   # the information is held by global PG tables, and can be obtained through SQL queries
   postgres=# SELECT datname, datcollate FROM pg_database ORDER BY datname;
        datname     | datcollate  
   -----------------+-------------
    icinga2_ido     | en_US.UTF-8
    postgres        | en_US.UTF-8
    template0       | en_US.UTF-8
    template1       | en_US.UTF-8
   (4 rows)

Connect to a database
"""""""""""""""""""""

.. code-block:: bash

   postgres=# \c icinga2_ido
   You are now connected to database "icinga2_ido" as user "postgres".

List tables
"""""""""""

.. code-block:: bash

   postgres=# \dt
                              List of relations
    Schema |                  Name                  | Type  |    Owner    
   --------+----------------------------------------+-------+-------------
    public | icinga_acknowledgements                | table | icinga2_ido
    public | icinga_commands                        | table | icinga2_ido
    public | icinga_commenthistory                  | table | icinga2_ido
    public | icinga_comments                        | table | icinga2_ido

Describe table
""""""""""""""

.. code-block:: bash

   icinga2_ido=# \d icinga_commands
                                   Table "public.icinga_commands"
       Column    |  Type   |                              Modifiers                               
   --------------+---------+----------------------------------------------------------------------
    command_id   | bigint  | not null default nextval('icinga_commands_command_id_seq'::regclass)
    instance_id  | bigint  | default 0
    config_type  | integer | default 0
    object_id    | bigint  | default 0
    command_line | text    | default ''::text
   Indexes:
       "pk_command_id" PRIMARY KEY, btree (command_id)
       "uq_commands" UNIQUE CONSTRAINT, btree (instance_id, object_id, config_type)
       "command_object_idx" btree (object_id)
       "commands_i_id_idx" btree (instance_id)
