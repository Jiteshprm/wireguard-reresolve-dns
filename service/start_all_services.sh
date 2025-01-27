#/bin/bash
set -x
#Must be run as sudo
if [ $EUID -ne 0 ]
  then echo "Please run with sudo!"
  exit
fi


cp wireguard-reresolve-dns.service /etc/systemd/system
cp wireguard-reresolve-dns.timer /etc/systemd/system
systemctl daemon-reload
systemctl enable wireguard-reresolve-dns.service
systemctl enable --now wireguard-reresolve-dns.timer
systemctl start wireguard-reresolve-dns.service

