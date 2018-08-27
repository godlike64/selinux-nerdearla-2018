#!/bin/bash

. /etc/init.d/functions

echo "Nos pidieron dejar una app corriendo, con Apache como proxy."
echo "La app y Apache están corriendo. Pero el proxy no proxea."
echo "ASHUDA!!"
echo ""
echo "Tip: podés probar con telnet y GET ;)"

echo "Preparando escenario 2"
action $"Bajando el firewall (por qué? no hay porque)" systemctl stop firewalld
#action $"AAAAAAAAA" /usr/bin/systemctl stop firewalld
action $"Ajustando configuración Apache" cp /root/conf/scenario2.conf /etc/httpd/conf.d/
systemctl restart httpd
action $"Corriendo app server de hombre pobre. No apretes Ctrl-C ;)"
/root/bin/http.py
