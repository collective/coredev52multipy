#!/bin/sh
# Install one checkout of buildout.coredev for Python 2 and 3
# This script uses pyenv to install separate virtualenvs
TAG=5.2
PY2=2.7.17
PY3=3.7.5
VENVBASE=plone-coredev-$TAG

git clone -b $TAG git@github.com:plone/buildout.coredev.git

eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv virtualenv-init -)"


install() {
    VENV=$VENVBASE-$1
    echo "---------------------------------------------------------------------------"
    echo "Install Python $2 into directory $1 using venv $VENV"
    echo "---------------------------------------------------------------------------"
    cd $1
    pyenv virtualenv $2 $VENV
    pyenv local $VENV
    pyenv activate $VENV
    pip install -r ../buildout.coredev/requirements.txt
    buildout -N
    pyenv deactivate
    cd ..
}

install py2 $PY2
install py3 $PY3
