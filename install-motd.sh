#!/bin/bash
sudo apt-get -o Acquire::ForceIPv4=true update -y -qq
sudo apt-get -o Acquire::ForceIPv4=true install lsb-release update-motd figlet curl -y -qq
rm -r /etc/update-motd.d/
mkdir /etc/update-motd.d/
touch /etc/update-motd.d/00-header ; touch /etc/update-motd.d/10-sysinfo ; touch /etc/update-motd.d/90-footer
chmod +x /etc/update-motd.d/*
cat 00-header > /etc/update-motd.d/00-header
cat 10-sysinfo > /etc/update-motd.d/10-sysinfo
cat 90-footer > /etc/update-motd.d/90-footer
cat issue.net > /etc/issue.net
systemctl restart sshd
figlet Installation Complete
