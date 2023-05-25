#!/bin/bash

# Vérification du nombre de paramètres
if [ $# -ne 2 ]; then
    echo "Erreur : Le script nécessite 2 paramètres."
    exit 1
fi

# Récupération des paramètres
nombre1=$1
nombre2=$2

# Vérification si les paramètres sont des nombres
if ! [[ $nombre1 =~ ^[0-9]+$ ]]; then
    echo "Erreur : Le premier paramètre n'est pas un nombre."
    exit 1
fi

if ! [[ $nombre2 =~ ^[0-9]+$ ]]; then
    echo "Erreur : Le deuxième paramètre n'est pas un nombre."
    exit 1
fi

# Addition des nombres
result=$(($nombre1 + $nombre2))

# Affichage du résultat
echo "Result : $result"
