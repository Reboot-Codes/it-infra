#!/bin/bash

# Hej! Order here is important!
services=("website" "git" "games" "reverseproxy")

for service in "${!services[@]}"; do
  ansible-playbook ./containers/$service/up.playbook.yml --vars "@vars.yml"
done
