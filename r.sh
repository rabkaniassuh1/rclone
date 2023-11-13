#!/bin/bash
cd / && apt update && apt upgrade -y && python -m pip install --upgrade pip setuptools wheel
python -m pip install jedi fastapi kaleido python-multipart uvicorn && python -m pip install libtorrent && sudo apt-get install python3-libtorrent
sudo -v ; curl https://rclone.org/install.sh | sudo bash && pip install colab-xterm
rclone config create mega mega user rabkaniassuh1@proton.me pass Colab2drive
sudo mkdir -p /content/mega
sudo ln -s /bin/fusermount /bin/fusermount3
nohup rclone mount mega: /content/mega --copy-links --no-gzip-encoding --no-check-certificate --allow-other --allow-non-empty --umask 000 --vfs-cache-mode writes &
