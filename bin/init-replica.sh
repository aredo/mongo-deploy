#!/bin/sh
ansible-playbook playbooks/init-mongodb-replica.yml -i hosts/staging "$@"
