#!/bin/bash

# Vérifier qu'un premier argument est passé
if [ -z "$1" ]
then
    echo "Usage: ./argument.sh filename copyfile"
    exit 1
fi

# Vérifier que le deuxième argument est passé
if [ -z "$2" ]
then
    echo "Usage: ./argument.sh filename copyfile"
    exit 1
fi

# Vérifier que le deuxième argument est un fichier existant
if [ ! -f "$2" ]
then
    echo "$2 n'est pas un fichier existant"
    exit 1
fi

# Créer le fichier avec le nom passé en premier argument
touch "$1"

# Copier le contenu du fichier passé en deuxième argument dans le nouveau fichier
cp "$2" "$1"

echo "Le fichier $1 a été créé et rempli avec le contenu de $2"

