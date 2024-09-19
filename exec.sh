#!/usr/bin/env bash

WORKDIR=`dirname "$0"`
python3 -m venv $WORKDIR/venv
source $WORKDIR/venv/bin/activate
pip install pip --upgrade
pip install ansible --upgrade
test -f $WORKDIR/requirements.yml && ansible-galaxy install -r $WORKDIR/requirements.yml -p $WORKDIR/roles
ANSIBLE_REMOTE_TEMP=$WORKDIR/tmp ANSIBLE_ROLES_PATH=$WORKDIR/roles ansible-playbook -c local -i localhost, $WORKDIR/playbook.yml
