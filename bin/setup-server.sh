#!/bin/sh
ansible-playbook playbooks/setup-server.yml -i hosts/staging "$@"
