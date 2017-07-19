# Verificateur de 404
Verificateur de URL pour savoir si elles donnent une erreure 404.

# Utilisation

## Récupération du dépôt
On récupère le dépôt avec:
```
git clone https://github.com/epfl-sdf/test_404.git
```

## Lancer le vérificateur
Simplement avec la commande:
```
./batch_aspi.sh fichier_liste.csv
```

Le fichier `fichier_liste.csv` est un fichier `.csv` qui, pour notre configuration, contient 4 colonnes. L'important c'est que la 2ème colonne soit l'URL à tester.
