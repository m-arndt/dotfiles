#!/bin/bash
set -x

echo "https://webdav.bbs-einbeck.de /mnt/webdav-schule davfs rw,user,uid=michael,_netdev,x-systemd.automount,x-systemd.mount-timeout=30 0 0" | sudo tee -a /etc/fstab
echo "https://webdav.bbs-einbeck.de <nutzername> <password>" | sudo tee -a /etc/davfs2/secrets
echo "use_locks 0" | sudo tee -a /etc/davfs2/davfs2.conf
