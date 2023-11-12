#!/bin/bash
rclone config create mega mega user rabkaniassuh1@proton.me pass Colab2drive
mkdir -p /content/mega
rclone mount mega: /content/mega 
