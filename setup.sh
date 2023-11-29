#!/bin/bash

# Hej! Order here is important!
services=("website" "oldsite" "git" "games" "reverseproxy")

for service in "${!services[@]}"; do
  ansible-playbook ./containers/$service/setup.playbook.yml --vars "@vars.yml"
done
