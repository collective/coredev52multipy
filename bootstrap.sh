#!/bin/sh
git clone -b 5.2 git@github.com:plone/buildout.coredev.git

# for py 2.7
cd py2
virtualenv -p /usr/bin/python2.7 --clear .
./bin/pip install -r requirements.txt
./bin/buildout -N

# for py3.6
cd ../py3
python3.6 -m venv .
./bin/pip install -r requirements.txt
./bin/buildout -N
