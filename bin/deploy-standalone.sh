#!/bin/sh
ansible-playbook playbooks/deploy-standalone-mongodb.yml -i hosts/staging "$@"
