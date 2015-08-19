# Makefile for Python developement
#
# replace <source_package> with your application's package name
PACKAGE=<source_package>

PEP8 = pep8
PEP8FLAGS = --count --statistics --max-line-length=80
PYLINT = pylint
PYLINTFLAGS = -rn --disable=locally-disabled
PYTHONFILES := $(shell find . -name '*.py')

all: lint coverage

# repository cleanup
clean:
	@find . -name "*.pyc" -delete

distclean:
	@git clean -xdf

# syntax checking
lint: pylint pep8 isort

pep8: clean
	@echo "=== pep8 ==="
	@$(PEP8) $(PEP8FLAGS) $(PYTHONFILES) || true

pylint: clean
	@echo "=== pylint ==="
	@$(PYLINT) $(PYLINTFLAGS) $(PYTHONFILES) || true

isort: clean
	@echo "=== isort ==="
	@isort $(PYTHONFILES) --check-only || true

# unitary tests, code coverage
basic_coverage: clean
	@echo "=== Coverage ==="
	@coverage run --source=$(PACKAGE) -m unittest discover -s tests
	@coverage report

coverage: clean basic_coverage
	@rm -rf htmlcov
	@coverage html

test: clean
	@python -m unittest discover -s tests
