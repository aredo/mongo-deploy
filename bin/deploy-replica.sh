#!/bin/sh
ansible-playbook playbooks/deploy-mongodb-replica.yml -i hosts/staging "$@"
