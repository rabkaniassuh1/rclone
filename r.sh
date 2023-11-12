#!/bin/bash
rclone config create mega mega user rabkaniassuh1@proton.me pass Colab2drive
mkdir /content/mega
nohup rclone --vfs-cache-mode writes mount mega: /content/mega &
