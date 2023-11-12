#!/bin/bash
rclone config create mega mega user rabkaniassuh1@proton.me pass Colab2drive
ln -s /bin/fusermount /bin/fusermount3
mkdir -p /content/mega
rclone mount mega: /content/mega --copy-links --no-gzip-encoding --no-check-certificate --allow-non-empty --allow-non-empty --umask 000 --vfs-cache-mode writes
