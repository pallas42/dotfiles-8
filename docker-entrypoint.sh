#!/usr/bin/env bash
set -euo pipefail

ansible-galaxy install -r ./provision/requirements.yml
ansible-playbook -i inventory ./provision/archlinux.yml
