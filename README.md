# Mémoire IPSSI

Ce dépôt contient le code tout comme le texte qui fait référence à mon mémoire de Mastère 2. Le sujet de ce mémoire est de répondre à la problématique suivante: 

> *Comment réussir à intégrer efficacement la sécurité au sein d'une équipe DevOps?*

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table des matières</summary>
  <ol>
    <li>
        <a href="#générer-une-release">Générer une release</a></li>
        <ul>
            <li>
                <a href="prérequis">Prérequis</a>
            </li>
            <li>
                <a href="builder-l-image-docker">Builder l'image Docker</a>
            </li>
            <li>
                <a href="générer-le-fichier">Générer le fichier</a>
            </li>
        </ul>
    <li>
        <a href="#licence">Licence</a>
    </li>
  </ol>
</details>

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