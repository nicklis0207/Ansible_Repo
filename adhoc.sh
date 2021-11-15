#! /bin/bash


ansible all -m ansible.builtin.user -a "name=automation state=absent"

ansible all -m ansible.builtin.shell -a "sed -i '/^automation/d' /etc/sudoers"
