# Python
## Basics
### Pip
- [Python Package Index](https://pypi.python.org/pypi) (PyPi)
- pip - _the_ package installation tool
    - [PyPi](https://pypi.python.org/pypi/pip) - [code](https://github.com/pypa/pip) - [doc](https://pip.pypa.io/en/stable/)
- Wheel - a built-package format for Python
    - [PyPi](https://pypi.python.org/pypi/wheel) - [code](https://bitbucket.org/pypa/wheel) - [doc](http://wheel.readthedocs.org/en/latest/)
- [Christoph Gohlke](http://www.lfd.uci.edu/~gohlke/)'s unofficial Windows [wheel repository](http://www.lfd.uci.edu/~gohlke/pythonlibs/)

### Virtualenv
- virtualenv - creates virtual environments
    - [PyPi](https://pypi.python.org/pypi/virtualenv) - [code](https://github.com/pypa/virtualenv) - [doc](https://virtualenv.pypa.io/en/latest/)
- virtualenvwrapper - manages projects and virtual environments
    - [PyPi](https://pypi.python.org/pypi/virtualenvwrapper) - [code](https://bitbucket.org/dhellmann/virtualenvwrapper/overview) - [doc](http://virtualenvwrapper.readthedocs.org/en/latest/)

## Code quality
### Static Analysis
- isort - sorts imported packages and modules
    - [PyPi](https://pypi.python.org/pypi/isort/) - [code](https://github.com/timothycrosley/isort) - 
- pep8 - checks some of the style conventions in [PEP 8](https://www.python.org/dev/peps/pep-0008/)
    - [PyPi](https://pypi.python.org/pypi/pep8) - [code](https://github.com/PyCQA/pep8) - [doc](http://pep8.readthedocs.org/en/latest/)
- pylint - checks for errors, tries to enforce a coding standard and looks for bad code smells
    - [PyPi](https://pypi.python.org/pypi/pylint) - [code](https://bitbucket.org/logilab/pylint/) - [doc](http://docs.pylint.org/)

### Test frameworks
- [unittest](https://docs.python.org/3/library/unittest.html)
- Coverage
    - [PyPi]() - [code]() - [doc]()
- Nose
    - [PyPi](https://pypi.python.org/pypi/nose) - [code](https://github.com/nose-devs/nose) - [doc](https://nose.readthedocs.org/en/latest/)
- Pytest
    - [PyPi](https://pypi.python.org/pypi/pytest) - [code](https://github.com/pytest-dev/pytest) - [doc](http://pytest.org/latest/)

## Useful packages
### Networking
- aiohttp - HTTP client/server for [asyncio](https://docs.python.org/3.4/library/asyncio.html)
    - [PyPi](https://pypi.python.org/pypi/aiohttp) - [code](https://github.com/KeepSafe/aiohttp) - [doc](http://aiohttp.readthedocs.org/en/stable/)
- Paramiko - SSH2 protocol library
    - [PyPi](https://pypi.python.org/pypi/paramiko) - [code](https://github.com/paramiko/paramiko/) - [doc](http://docs.paramiko.org/en/1.15/)
- Requests
    - [PyPi](https://pypi.python.org/pypi/requests) - [code](https://github.com/kennethreitz/requests) - [doc](http://docs.python-requests.org/en/latest/)

### SCM
- Dulwich - native implementation of Git in Python
    - [PyPi](https://pypi.python.org/pypi/dulwich) - [code](https://github.com/jelmer/dulwich) - [doc](https://www.samba.org/~jelmer/dulwich/docs/)
- GitPython - Git wrapper
    - [PyPi](https://pypi.python.org/pypi/GitPython) - [code](https://github.com/gitpython-developers/GitPython) - [doc](http://gitpython.readthedocs.org/en/stable/)
    - note: the documentation is _very scarce_, delving into the code is required to understand object relationship

### Templating
- Jinja2
    - [PyPi](https://pypi.python.org/pypi/Jinja2) - [code](https://github.com/mitsuhiko/jinja2) - [doc](http://jinja.pocoo.org/docs/dev/)

### Web
- [Python's Web Framework Benchmarks](http://klen.github.io/py-frameworks-bench/)