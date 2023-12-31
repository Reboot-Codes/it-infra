#!/bin/bash

# In loving memory of mong, 2023-2023.
# Gone but not forgotten.

apk add openssh shadow python3 sshpass bash
rc-update add sshd
service sshd start

sed -i s/ash/bash/ /etc/passwd
sed -i s/#PermitRootLogin\ prohibit-password/PermitRootLogin\ yes/ /etc/ssh/sshd_config
sed -i s/#PubkeyAuthentication/PubkeyAuthentication/ /etc/ssh/sshd_config
reboot
