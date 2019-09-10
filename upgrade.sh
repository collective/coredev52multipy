#!/bin/sh
# Install one checkout of buildout.coredev for Python 2 and 3
# This script uses pyenv to install separate virtualenvs
TAG=5.2
PY2=2.7.15
PY3=3.7.4
VENVBASE=plone-coredev-$TAG

cd buildout.coredev
git pull --rebase --autostash
cd ..

eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv virtualenv-init -)"


upgrade() {
    VENV=$VENVBASE-$1
    echo "---------------------------------------------------------------------------"
    echo "Upgrade Python directory $1 using venv $VENV"
    echo "---------------------------------------------------------------------------"
    cd $1
    pyenv activate $VENV
    pip install -r ../buildout.coredev/requirements.txt
    buildout -N
    pyenv deactivate
    cd ..
}

upgrade py2
upgrade py3

