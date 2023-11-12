#!/bin/bash
rclone config create mega mega user rabkaniassuh1@proton.me pass Colab2drive
sudo mkdir -p /content/mega
sudo ln -s /bin/fusermount /bin/fusermount3
nohup rclone mount mega: /content/mega --copy-links --no-gzip-encoding --no-check-certificate --allow-other --allow-non-empty --umask 000 --vfs-cache-mode writes
