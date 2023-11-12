#!/bin/bash

# Create a new remote for MEGA
rclone config create mega mega rabkaniassuh1@proton.me Colab2drive

ln -s /bin/fusermount /bin/fusermount3
mkdir /content/mega

# Mount the MEGA drive to a local directory
rclone mount mega: /content/mega --copy-links --no-gzip-encoding --no-check-certificate --allow-non-empty --allow-non-empty --umask 000 --vfs-cache-mode writes
