#!/bin/bash

echo "[*] Updating and installing tools..."
apt update
apt install -y $(cat /root/tools.txt)

echo "[*] Setup complete. Happy hacking!"
