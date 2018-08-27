#!/bin/bash

. /etc/init.d/functions

echo "Preparando escenario 1"
mkdir -p /root/backup
action $"Tomando un backup por si rompemos todo" cp /etc/rsyslog.conf /root/backup
action $"Ajustando configuración rsyslog" sed -e '/\(ModLoad imudp\|ModLoad imtcp\)/s/^#//' -e '/ServerRun/s/^#//' -e '/ServerRun 514$/s/514/5140/' -i /etc/rsyslog.conf
action $"Reiniciando rsyslog" systemctl restart rsyslog
echo ""
echo ""
echo "Bueno, configuramos rsyslog como lo pidió la gerencia. Uno de los requerimientos "
echo "era escuchar en TCP y UDP para mensajes de logs de otros servers."
echo "PERO alguien le pifió cuando definieron los requerimientos, y el puerto no es el default."
echo "rsyslog está andando, pero nadie puede mandarle logs. ASHUDA!"
