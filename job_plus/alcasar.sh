#!/bin/bash

# Récupérer l'adresse email de l'utilisateur en argument
email=$1

# Demander le mot de passe de l'utilisateur
read -s -p "Entrez votre mot de passe : " password
echo

# Effectuer la connexion en utilisant curl
curl -d "email=$email&password=$password" -X POST https://alcasar.laplateforme.io/login


