# Mémoire IPSSI

Ce dépôt contient le code tout comme le texte qui fait référence à mon mémoire de Mastère 2. Le sujet de ce mémoire est de répondre à la problématique suivante: 

> *Comment réussir à intégrer efficacement la sécurité au sein du développement et de l'opérationnel?*

## Générer une release
### Prérequis
Pour installer les prérequis:
```bash
sudo pacman -S docker pandoc
```

### Builder l'image Docker
Pour builder au format **PDF** le mémoire, il faut au préalable avoir créé le conteneur Pandoc.
Pour le créer :
```bash
cd docker
make
```

### Générer le fichier
Pour générer le fichier, il faut se rendre à la racine du projet et exécuter la commande:
```bash
make clean; make simple
```

## Licence
![](img/CCBYSA.png)

Le projet est sous licence **CC BY-SA** (Attribution - Partage dans les Mêmes Conditions).
Si vous souhaitez plus d'informations à ce sujet, vous pouvez vous rendre sur [cette page](https://creativecommons.org/licenses/by-sa/4.0/).