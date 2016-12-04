Python
======

Basics
------

Packages
~~~~~~~~

* `Python Package Index <https://pypi.python.org/pypi>`__ (PyPi)
* pip - *the* package installation tool
  (`PyPi <https://pypi.python.org/pypi/pip>`__ -
  `code <https://github.com/pypa/pip>`__ -
  `doc <https://pip.pypa.io/en/stable/>`__)
* Wheel - a built-package format for Python
  (`PyPi <https://pypi.python.org/pypi/wheel>`__ -
  `code <https://bitbucket.org/pypa/wheel>`__ -
  `doc <http://wheel.readthedocs.org/en/latest/>`__)
* `Christoph Gohlke <http://www.lfd.uci.edu/~gohlke/>`__ 's unofficial
  Windows `wheel repository <http://www.lfd.uci.edu/~gohlke/pythonlibs/>`__

Virtualenv
~~~~~~~~~~

* virtualenv - creates virtual environments
  (`PyPi <https://pypi.python.org/pypi/virtualenv>`__ -
  `code <https://github.com/pypa/virtualenv>`__ -
  `doc <https://virtualenv.pypa.io/en/latest/>`__)
* virtualenvwrapper - manages projects and virtual environments
  (`PyPi <https://pypi.python.org/pypi/virtualenvwrapper>`__ -
  `code <https://bitbucket.org/dhellmann/virtualenvwrapper/overview>`__
  - `doc <http://virtualenvwrapper.readthedocs.org/en/latest/>`__)
* pew - Python Env Wrapper (`PyPi <https://pypi.python.org/pypi/pew>`__
  - `code <https://github.com/berdario/pew>`__)

Code quality
------------

Static Analysis
~~~~~~~~~~~~~~~

* isort - sorts imported packages and modules
  (`PyPi <https://pypi.python.org/pypi/isort/>`__ -
  `code <https://github.com/timothycrosley/isort>`__)
* pep8 - checks some of the style conventions in
  `PEP 8 <https://www.python.org/dev/peps/pep-0008/>`__
  (`PyPi <https://pypi.python.org/pypi/pep8>`__ -
  `code <https://github.com/PyCQA/pep8>`__ -
  `doc <http://pep8.readthedocs.org/en/latest/>`__)
* pylint - checks for errors, tries to enforce a coding standard and
  looks for bad code smells
  (`PyPi <https://pypi.python.org/pypi/pylint>`__ -
  `code <https://bitbucket.org/logilab/pylint/>`__ -
  `doc <http://docs.pylint.org/>`__)

Test frameworks
~~~~~~~~~~~~~~~

* `unittest <https://docs.python.org/3/library/unittest.html>`__
* Coverage (`PyPi <https://pypi.python.org/pypi/coverage>`__ -
  `code <https://bitbucket.org/ned/coveragepy>`__ -
  `doc <http://coverage.readthedocs.org/en/latest/>`__)
* Nose (`PyPi <https://pypi.python.org/pypi/nose>`__ -
  `code <https://github.com/nose-devs/nose>`__ -
  `doc <https://nose.readthedocs.org/en/latest/>`__)
* Pytest (`PyPi <https://pypi.python.org/pypi/pytest>`__ -
  `code <https://github.com/pytest-dev/pytest>`__ -
  `doc <http://pytest.org/latest/>`__)

Useful packages
---------------

Networking
~~~~~~~~~~

* Paramiko - SSH2 protocol library
  (`PyPi <https://pypi.python.org/pypi/paramiko>`__ -
  `code <https://github.com/paramiko/paramiko/>`__ -
  `doc <http://docs.paramiko.org/en/1.15/>`__)
* Requests (`PyPi <https://pypi.python.org/pypi/requests>`__ -
  `code <https://github.com/kennethreitz/requests>`__ -
  `doc <http://docs.python-requests.org/en/latest/>`__)

Science
~~~~~~~

* IPython - interactive Python shell
  (`PyPi <https://pypi.python.org/pypi/ipython>`__ -
  `code <https://github.com/ipython/ipython>`__ -
  `doc <http://ipython.readthedocs.org/en/stable/>`__)
* Jupyter Notebook (formerly IPython Notebook)
  (`PyPi <https://pypi.python.org/pypi/jupyter>`__ -
  `code <https://github.com/jupyter>`__ -
  `doc <https://jupyter.readthedocs.org/en/latest/>`__)
* Numpy - N-dimensional array manipulation
  (`PyPi <https://pypi.python.org/pypi/numpy>`__ -
  `code <http://sourceforge.net/projects/numpy/files/NumPy/>`__ -
  `doc <http://docs.scipy.org/doc/numpy/>`__)
* Scipy - mathematics, science, and engineering
  (`PyPi <https://pypi.python.org/pypi/scipy>`__ -
  `code <http://sourceforge.net/projects/scipy/files/scipy/>`__ -
  `doc <http://docs.scipy.org/doc/scipy/reference/>`__)

SCM
~~~

* Dulwich - native implementation of Git in Python
  (`PyPi <https://pypi.python.org/pypi/dulwich>`__ -
  `code <https://github.com/jelmer/dulwich>`__ -
  `doc <https://www.samba.org/~jelmer/dulwich/docs/>`__)
* GitPython - Git wrapper
  (`PyPi <https://pypi.python.org/pypi/GitPython>`__ -
  `code <https://github.com/gitpython-developers/GitPython>`__ -
  `doc <http://gitpython.readthedocs.org/en/stable/>`__)

  * note: the documentation is *very scarce*, delving into the code is
    required to understand object relationship

Service management
~~~~~~~~~~~~~~~~~~

* `Supervisor <http://supervisord.org/>`__ - A process control system

Templating
~~~~~~~~~~

* Jinja2 (`PyPi <https://pypi.python.org/pypi/Jinja2>`__ -
  `code <https://github.com/mitsuhiko/jinja2>`__ -
  `doc <http://jinja.pocoo.org/docs/dev/>`__)

Web
~~~

* `Isso <http://posativ.org/isso/>`__ - A commenting server
* `Python's Web Framework Benchmarks <http://klen.github.io/py-frameworks-bench/>`__

WSGI
~~~~

* aiohttp - HTTP client/server for
  `asyncio <https://docs.python.org/3.4/library/asyncio.html>`__
  (`PyPi <https://pypi.python.org/pypi/aiohttp>`__ -
  `code <https://github.com/KeepSafe/aiohttp>`__ -
  `doc <http://aiohttp.readthedocs.org/en/stable/>`__)
* `Django <https://www.djangoproject.com/>`__ - The web framework for
  perfectionists with deadlines
* `Flask <http://flask.pocoo.org/>`__ - A microframework based on
  Werkzeug, Jinja 2 and good intentions
* `Gunicorn <http://docs.gunicorn.org/en/latest/>`__ - WSGI server
* `Pylons <http://www.pylonsproject.org/>`__ -
  `Pyramid <http://www.pylonsproject.org/projects/pyramid/about>`__
