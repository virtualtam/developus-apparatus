Elastic Stack
=============

Overview
--------

The **Elastic Stack**, formerly known as **ELK**, is a software suite
composed of the following core components:

- the
  `Elasticsearch <https://www.elastic.co/products/elasticsearch>`_
  search engine and indexer;
- the `Logstash <https://www.elastic.co/products/logstash>`_
  client;
- the `Kibana <https://www.elastic.co/products/kibana>`_ web
  dashboard.

A typical installation might also feature:

- the `X-Pack <https://www.elastic.co/products/x-pack>`_ security,
  machine learning and monitoring plugin collection;
- several `Beats <https://www.elastic.co/products/beats>`_ lightweight
  data shippers.

Documentation
-------------

- `Elasticsearch: The Definitive
  Guide <https://www.elastic.co/guide/en/elasticsearch/guide/master/index.html>`_
- `Exploring Elasticsearch <http://exploringelasticsearch.com/>`_
- `The complete guide to the ELK
  stack <https://logz.io/learn/complete-guide-elk-stack/>`_ - Logz.io

Setup
-----

Security
~~~~~~~~

The X-Pack plugin comes with a subscription plan and a 30-day trial
license:

- `Subscriptions <https://www.elastic.co/subscriptions>`_
- `License
  expiration <https://www.elastic.co/guide/en/x-pack/current/license-expiration.html>`_
- `After X-Pack license
  expiration <https://discuss.elastic.co/t/after-x-pack-license-expiration/78072/7>`_
  - Elastic forum

*Once the license has expired, a number of features become unavailable,
among which is user management (authentication, authorization).*

This limitation can be circumvented by serving the Elastic Stack
services behind a reverse HTTP proxy, using Basic Authentication
features to manage user authentication and provide simple authorization:

- `Playing HTTP Tricks with
  Nginx <https://www.elastic.co/blog/playing-http-tricks-nginx>`_

Cluster management
~~~~~~~~~~~~~~~~~~

- `Pending
  tasks <https://www.elastic.co/guide/en/elasticsearch/guide/current/_pending_tasks.html>`_
- `Pending cluster
  tasks <https://www.elastic.co/guide/en/elasticsearch/reference/current/cluster-pending.html>`_
- `How to monitor Elasticsearch
  performance <https://www.datadoghq.com/blog/monitor-elasticsearch-performance-metrics/>`_

Community
---------

- `/r/elastic <https://www.reddit.com/r/elastic/>`_
- `/r/elasticsearch <https://www.reddit.com/r/elasticsearch/>`_
- `/r/logstash <https://www.reddit.com/r/logstash/>`_
- `/r/kibana <https://www.reddit.com/r/kibana/>`_

Real-world use cases
--------------------

Elastic highlights
~~~~~~~~~~~~~~~~~~

- `Use cases <https://www.elastic.co/use-cases>`_
- `Uses of Elasticsearch, and Things to
  Learn <https://www.elastic.co/blog/found-uses-of-elasticsearch>`_
- `Dealing with Human
  Language <https://www.elastic.co/guide/en/elasticsearch/guide/current/languages.html>`_
- `Using Elastic Graph + Kibana to Analyze Panama
  Papers <https://www.elastic.co/blog/using-elastic-graph-and-kibana-to-analyze-panama-papers>`_
- `Introducing Machine Learning for the Elastic
  Stack <https://www.elastic.co/blog/introducing-machine-learning-for-the-elastic-stack>`_

Community resources
~~~~~~~~~~~~~~~~~~~

- `What are use cases of
  Elasticsearch? <https://www.quora.com/What-are-use-cases-of-Elasticsearch>`_
  - Quora
- `Engineering Uber Predictions in Real Time with
  ELK <http://eng.uber.com/elk/>`_ - Uber Engineering Blog
- `How to use Elasticsearch for Natural Language Processing and Text
  Mining <http://dataconomy.com/tag/use-elasticsearch-nlp-text-mining/>`_
  - Dataconomy

Tutorials and examples
----------------------

ELK Hello World Example
~~~~~~~~~~~~~~~~~~~~~~~

- `Logstash
  setup <https://oliverveits.wordpress.com/2016/11/17/logstash-hello-world/>`_
- `Elasticsearch
  setup <https://oliverveits.wordpress.com/2016/11/18/elasticsearch-hello-world-example/>`_
- `Kibana
  setup <https://oliverveits.wordpress.com/2016/11/20/kibana-hello-world-example/>`_

Apache HTTPD 2.4 logs
~~~~~~~~~~~~~~~~~~~~~

- `How to Use Elasticsearch, Logstash, and Kibana to Manage Apache
  Logs <https://qbox.io/blog/elasticsearch-logstash-kibana-apache-logs>`_
- `Logstash basic configuration
  examples <https://www.elastic.co/guide/en/logstash/master/config-examples.html>`_
- `Logstash patterns for HTTPD
  logs <https://github.com/logstash-plugins/logstash-patterns-core/blob/master/patterns/httpd>`_

Kibana visualizations
~~~~~~~~~~~~~~~~~~~~~

- `Creating the perfect Kibana
  dashboard <https://logz.io/blog/perfect-kibana-dashboard/>`_

Python bindings
~~~~~~~~~~~~~~~

- `elasticsearch-py <https://elasticsearch-py.readthedocs.io/>`_
  low-level API
- `elasticsearch-dsl <https://elasticsearch-dsl.readthedocs.io>`_
  high-level Domain-Specific Language (DSL)
- Having fun: Python and Elasticsearch, `Part
  1 <https://bitquabit.com/post/having-fun-python-and-elasticsearch-part-1/>`_,
  `Part
  2 <https://bitquabit.com/post/having-fun-python-and-elasticsearch-part-2/>`_,
  `Part
  3 <https://bitquabit.com/post/having-fun-python-and-elasticsearch-part-3/>`_
