# selinux-nerdearla-2018
Workshop de SELinux para Nerdearla 2018

## Requisitos

Hay dos maneras de hacer este workshop:

### Vagrant

1. Hay entornos de Vagrant preparados. Teniendo Vagrant instalado y configurado en tu PC/Laptop/Cafetera:
    
        $ mkdir selinux-workshop
        $ cd selinux-workshop
        $ wget https://www.vicarious.com.ar/selinux/Vagrantfile
        $ vagrant up
    

2. Listo! Eso deja una VM de Vagrant con todo configurado para el workshop. Para loguearse, simplemente:
    
        $ vagrant ssh
        [...]
        [vagrant@c75 ~]$ sudo su -
    
3. Asistir al workshop en Nerdearla 2018 :D
### A mano

Si no tenés Vagrant, o desconfiás del box, o simplemente querés instalar a mano, los pasos a seguir son:

1. Instalar CentOS 7.5.
2. **Dejar SELinux habilitado.**
3. Instalar los siguientes paquetes:
    
        # yum install httpd policycoreutils-python netstat telnet
    
4. Clonar este repo:
    
        # git clone https://github.com/godlike64/selinux-nerdearla-2018.git
    
5. Mover el contenido del repo a /root:
    
        # mv ~/selinux-nerdearla-2018/bin ~/
        # mv ~/selinux-nerdearla-2018/conf ~/
    
6. Listo!
7. Asistir al workshop en Nerdearla 2018 :D
