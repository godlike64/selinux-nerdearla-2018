#!/bin/bash

. /etc/init.d/functions

action $"Preparando escenario 3"
action $"Creando usuario..."
mkdir -p /otrohome
useradd -m -G users -b /otrohome usuario -s /bin/bash

action $"Armando public_html para Apache"
mkdir -p /otrohome/usuario/public_html
chmod 711 /otrohome/usuario
chmod 755 /otrohome/usuario/public_html
echo "ANDAAAAAAAA" > /otrohome/usuario/public_html/index.html

action $"Bajando el firewall (por qué? no hay porque)" systemctl stop firewalld

action $"Ajustando configuración Apache" cp /root/conf/scenario3.conf /etc/httpd/conf.d/scenario2.conf
action $"Habilitando UserDir en Apache" cp /root/conf/userdir.conf /etc/httpd/conf.d/userdir.conf
systemctl restart httpd

echo ""
echo "La gerencia nos pidió crear un usuario, pero en otro home. Así que lo hicimos."
echo "No sabemos si lo hicimos bien... O sea, el usuario está"
echo "Es más, ponele password, vas a ver que entrás de una."
echo "El problema es que también nos pidieron hacerle un public_html para acceder desde Apache."
echo "Eso está hecho, pero Apache no lo quiere leer. ASHUDA!!"
echo ""
echo "Tip: podés probar con telnet y GET ;)"
