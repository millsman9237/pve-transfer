#!/usr/bin/env bash

echo "Creating Folder for Backups"
mkdir /file-backups
echo "Setting new folder as workspace"
cd /file-backups
echo "Backing up /var/lib/pve-cluster/config.db to /file-backups/config.db.bak"
mv /var/lib/pve-cluster/config.db /file-backups/config.db.bak
echo "Compressing corosync folder"
tar -cvzf corosync.tar.gz /etc/corosync.conf
echo "Moving /etc/corosync.conf to /file-backups/corosync.tar.gz"
mv /etc/corosync.tar.gz
echo "Backing up /etc/hostname to /file-backups/hostname.bak"
mv /etc/hostname /file-backups/hostname.bak
echo "Backing up /etc/hosts to /file-backups/hosts.bak"
mv /etc/hosts /file-backups/hosts.bak
echo "Backing up /etc/network/interfaces to /file-backups/interfaces.bak"
mv /etc/network/interfaces /file-backups/interfaces.bak

