#!/bin/bash

ansible-playbook ./containers/website/down.playbook.yml --vars "@vars.yml"
