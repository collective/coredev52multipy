coredev52multipy
================

Simplified Python 2/3 Plone core development.

Overview
--------

This buildouts a `Plone 5.2 buildout.coredev <https://github.com/plone/buildout.coredev/tree/5.2>`_ for Python 2 and Python 3 in one step.

It utilizes pyenv to manage python versions and virtualenv.

Advantage is, it uses one clone of buildout.coredev and one sources tree for both versions.

It is strongly recommended to use a central buildout cache for the eggs as described in the buildout documentation `User default configuration <http://docs.buildout.org/en/latest/topics/variables-extending-and-substitutions.html#user-default-configuration>`_ to not download all eggs twice or more.

Installation
------------

Precondition: Install `Pyenv <https://github.com/pyenv/pyenv>`_ (best using `pyenv installer <https://github.com/pyenv/pyenv-installer>`_).

Then run ``bootstrap.sh``.
This installs the needed Python versions, creates 2 virtualenvs and runs buildout for both,

Afterwards in folder ``py2`` there is a Plone build with Python 2.7 and in ``py3`` for Python 3.7.

Upgrade
-------

To upgrade to the latest code of buildout.coredev

Source Code and Contributions
-----------------------------

If you want to help with the development (improvement, update, bug-fixing, ...) of ``coredev52multipy`` this is a great idea!

- `Source code at Github <https://github.com/collective/coredev52multipy>`_
- `Issue tracker at Github <https://github.com/collective/coredev52multipy/issues>`_

You can clone it or `get access to the github-collective <http://collective.github.com/>`_ and work directly on the project.
Please do larger changes on a branch and submit a Pull Request.

Maintainer of coredev52multipy is Jens Klein (@jensens).
