#!/bin/bash

# Hej! Order here is important!
services=("website" "reverseproxy")

for service in "${!services[@]}"; do
  ansible-playbook ./containers/$service/update.playbook.yml --vars "@vars.yml"
done
