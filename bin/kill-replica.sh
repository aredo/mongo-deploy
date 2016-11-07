#!/bin/sh
ansible-playbook playbooks/kill-replica.yml -i hosts/staging "$@"
