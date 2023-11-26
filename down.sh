#!/bin/bash

# Hej! Order here is important!
services=("website" "git" "games" "reverseproxy")

for service in "${!services[@]}"; do
  ansible-playbook ./containers/$service/down.playbook.yml --vars "@vars.yml"
done
