#!/bin/bash

ansible-playbook ./containers/website/up.playbook.yml --vars "@vars.yml"
