#!/bin/bash
#============
#
#         SCRIPT DE CONFIGURATION
#
#============

if [ "$EUID" -ne 0 ]; then
    echo "Erreur : le script doir être exécuté en root.
    echo "Veuillez utiliser : sudo ./install.sh"
    exit 1
fi

echo "*** Début du script de configuration ***"
sleep 2

#============

echo "*** Phase 1 : Mise à jour du système ***"
sleep 2

apt update && apt upgrade -y
apt autoremove -y

#============

echo "*** Phase 2 : Installation des utilitaires de base ***"
sleep 2

apt install -y sudo curl wget nano tree zip unzip openssh-client openssh-server htop dnsutils

#============

echo "*** Phase 3 : Création de l'utilisateur Ciel ***"
sleep 2

useradd -m -s /bin/bash -G sudo Ciel
echo "Définir le mot de passe de l'utilisateur Ciel :"
passwd Ciel 

#============

echo "*** Phase 4 : Définition de quelques alias pour l'utilisateur Ciel ***"
sleep 2

alias ll='ls -lah' >> /home/Ciel/.bashrc
echo "alias ll='ls -lah'"
alias la='ls -A' >> /home/Ciel/.bashrc
echo "alias la='ls -A'"
alias grep='grep --color=auto' >> /home/Ciel/.bashrc
echo "alias grep='grep --color=auto'"
