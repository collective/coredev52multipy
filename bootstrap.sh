#!/bin/sh
git clone -b 5.2 git@github.com:plone/buildout.coredev.git

# for py 2.7
cd py2
virtualenv -p `which python2.7` --clear .
./bin/pip install -r ../buildout.coredev/requirements.txt
./bin/buildout -N

# for py3.6
cd ../py3
`which python3.6` -m venv .
./bin/pip install -r ../buildout.coredev/requirements.txt
./bin/buildout -N
