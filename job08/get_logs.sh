#!/bin/bash

# Obtenir la date et l'heure actuelles au format jj-mm-aaaa-HH:MM
date=$(date +'%d-%m-%Y-%H:%M')

# Nom du dossier
folder="number_connection-$date"

# Créer le dossier
mkdir "$folder"

# Chemin du fichier de sortie
output_file="$folder/number_connection-$date.txt"

# Commande pour extraire le nombre de connexions à votre session
command="who | wc -l"

# Exécuter la commande et enregistrer la sortie dans le fichier
$command > "$output_file"

# Créer un sous-dossier appelé Backup s'il n'existe pas déjà
mkdir -p Backup

# Archiver le dossier
tar -czf "Backup/$folder.tar.gz" "$folder"

# Supprimer le dossier original après l'archivage
rm -r "$folder"
