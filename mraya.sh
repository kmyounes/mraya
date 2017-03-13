#!/bin/bash
#Ce script a été crée par KMY afin de pouvoir modifier le fichier sources.list au club OMC
echo Ce script va changer votre fichier de configuration de sources pour apt
echo 1-Configurer le sources.list avec le mirroir du club
echo 2-Reconfigurer le sources.list avec la configuration initiale

read -p 'veuillez entrer votre choix : ' choix
if [ $choix = 1 ]
then 
    cd /etc/apt 
    if [ ! -e sources.list.original ]; then
        sudo mv sources.list sources.list.original && sudo wget http://mirror/sources.list
    else 
        sudo rm sources.list ; sudo wget http://mirror/sources.list
    fi
    sudo apt update

elif [ $choix=2 ] 
then
cd /etc/apt && sudo mv sources.list.original sources.list
            sudo apt update
         else echo veuillez entrer un numero valide 
         fi

exit 0
