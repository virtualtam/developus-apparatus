# Python
## Basics
### Pip
- [Python Package Index](https://pypi.python.org/pypi) (PyPi)
- pip - _the_ package installation tool ([PyPi](https://pypi.python.org/pypi/pip) - [code](https://github.com/pypa/pip) - [doc](https://pip.pypa.io/en/stable/))
- Wheel - a built-package format for Python ([PyPi](https://pypi.python.org/pypi/wheel) - [code](https://bitbucket.org/pypa/wheel) - [doc](http://wheel.readthedocs.org/en/latest/))
- [Christoph Gohlke](http://www.lfd.uci.edu/~gohlke/)'s unofficial Windows [wheel repository](http://www.lfd.uci.edu/~gohlke/pythonlibs/)

### Virtualenv
- virtualenv - creates virtual environments ([PyPi](https://pypi.python.org/pypi/virtualenv) - [code](https://github.com/pypa/virtualenv) - [doc](https://virtualenv.pypa.io/en/latest/))
- virtualenvwrapper - manages projects and virtual environments ([PyPi](https://pypi.python.org/pypi/virtualenvwrapper) - [code](https://bitbucket.org/dhellmann/virtualenvwrapper/overview) - [doc](http://virtualenvwrapper.readthedocs.org/en/latest/))
- pew - Python Env Wrapper ([PyPi](https://pypi.python.org/pypi/pew) - [code](https://github.com/berdario/pew))

## Code quality
### Static Analysis
- isort - sorts imported packages and modules ([PyPi](https://pypi.python.org/pypi/isort/) - [code](https://github.com/timothycrosley/isort))
- pep8 - checks some of the style conventions in [PEP 8](https://www.python.org/dev/peps/pep-0008/) ([PyPi](https://pypi.python.org/pypi/pep8) - [code](https://github.com/PyCQA/pep8) - [doc](http://pep8.readthedocs.org/en/latest/))
- pylint - checks for errors, tries to enforce a coding standard and looks for bad code smells ([PyPi](https://pypi.python.org/pypi/pylint) - [code](https://bitbucket.org/logilab/pylint/) - [doc](http://docs.pylint.org/))

### Test frameworks
- [unittest](https://docs.python.org/3/library/unittest.html)
- Coverage ([PyPi](https://pypi.python.org/pypi/coverage) - [code](https://bitbucket.org/ned/coveragepy) - [doc](http://coverage.readthedocs.org/en/latest/))
- Nose ([PyPi](https://pypi.python.org/pypi/nose) - [code](https://github.com/nose-devs/nose) - [doc](https://nose.readthedocs.org/en/latest/))
- Pytest ([PyPi](https://pypi.python.org/pypi/pytest) - [code](https://github.com/pytest-dev/pytest) - [doc](http://pytest.org/latest/))

## Useful packages
### Networking
- aiohttp - HTTP client/server for [asyncio](https://docs.python.org/3.4/library/asyncio.html) ([PyPi](https://pypi.python.org/pypi/aiohttp) - [code](https://github.com/KeepSafe/aiohttp) - [doc](http://aiohttp.readthedocs.org/en/stable/))
- Paramiko - SSH2 protocol library ([PyPi](https://pypi.python.org/pypi/paramiko) - [code](https://github.com/paramiko/paramiko/) - [doc](http://docs.paramiko.org/en/1.15/))
- Requests ([PyPi](https://pypi.python.org/pypi/requests) - [code](https://github.com/kennethreitz/requests) - [doc](http://docs.python-requests.org/en/latest/))

### Science
- IPython - interactive Python shell ([PyPi](https://pypi.python.org/pypi/ipython) - [code](https://github.com/ipython/ipython) - [doc](http://ipython.readthedocs.org/en/stable/))
- Jupyter Notebook (formerly IPython Notebook) ([PyPi](https://pypi.python.org/pypi/jupyter) - [code](https://github.com/jupyter) - [doc](https://jupyter.readthedocs.org/en/latest/))
- Numpy - N-dimensional array manipulation ([PyPi](https://pypi.python.org/pypi/numpy) - [code](http://sourceforge.net/projects/numpy/files/NumPy/) - [doc](http://docs.scipy.org/doc/numpy/))
- Scipy - mathematics, science, and engineering ([PyPi](https://pypi.python.org/pypi/scipy) - [code](http://sourceforge.net/projects/scipy/files/scipy/) - [doc](http://docs.scipy.org/doc/scipy/reference/))

### SCM
- Dulwich - native implementation of Git in Python ([PyPi](https://pypi.python.org/pypi/dulwich) - [code](https://github.com/jelmer/dulwich) - [doc](https://www.samba.org/~jelmer/dulwich/docs/))
- GitPython - Git wrapper ([PyPi](https://pypi.python.org/pypi/GitPython) - [code](https://github.com/gitpython-developers/GitPython) - [doc](http://gitpython.readthedocs.org/en/stable/))
    - note: the documentation is _very scarce_, delving into the code is required to understand object relationship

### Service management
- [Supervisor](http://supervisord.org/) - A process control system

### Templating
- Jinja2 ([PyPi](https://pypi.python.org/pypi/Jinja2) - [code](https://github.com/mitsuhiko/jinja2) - [doc](http://jinja.pocoo.org/docs/dev/))

### Web
- [Isso](http://posativ.org/isso/) - A commenting server
- [Python's Web Framework Benchmarks](http://klen.github.io/py-frameworks-bench/)

### WSGI
- [Django](https://www.djangoproject.com/) - The web framework for perfectionists with deadlines
- [Flask](http://flask.pocoo.org/) - A microframework based on Werkzeug, Jinja 2 and good intentions
- [Gunicorn](http://docs.gunicorn.org/en/latest/) - WSGI server
- [Pylons](http://www.pylonsproject.org/) - [Pyramid](http://www.pylonsproject.org/projects/pyramid/about)
