#!/bin/bash
yes | curl -o /etc/yum.repos.d/konimex-neofetch-epel-7.repo https://copr.fedorainfracloud.org/coprs/konimex/neofetch/repo/epel-7/konimex-neofetch-epel-7.repo
yum -y install neofetch
echo /usr/bin/neofetch >> /home/user/.bash_profile
