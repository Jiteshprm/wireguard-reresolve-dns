#/bin/bash
set -x
#Must be run as sudo
if [ $EUID -ne 0 ]
  then echo "Please run with sudo!"
  exit
fi


systemctl daemon-reload
systemctl stop wireguard-reresolve-dns.service
systemctl stop wireguard-reresolve-dns.timer
systemctl disable wireguard-reresolve-dns.service
systemctl disable wireguard-reresolve-dns.timer

