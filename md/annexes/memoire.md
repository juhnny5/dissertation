## Mise en application : réalisation du mémoire
La réalisation de ce mémoire résulte d'un travail de longue haleine.
J'ai commencé par identifier les tâches qui pourrait me coûter du temps. Tout temps lors de l'écriture d'un mémoire est précieux.

Pour être totalement dans le sujet, j'ai pris la décision de rédiger ce mémoire sous la forme de code.
Inscrit ainsi dans une démarche DevOps et en y rajoutant l'aspect sécuritaire, je vais parler dans cette partie des annexes, comment 
j'ai rédigé ce mémoire, avec quels outils, où ais-je intégré la sécurité, etc.
### Des outils, encore des outils...

Le mémoire n'a pas été rédigé sur une éditeur de texte standard, il a été rédigé dans le but de répondre à une approche DevSecOps en stockant 
le contenu du mémoire dans un dépôt *Git*. Ce dépoôt est analysé en tant réel par le biais d'une pipeline **Github CI**.

L'outil utilisé pour générer le fichier au bon format est *pandoc*, le mémoire lui est écrit au format *markdown*. Pandoc est contenu dans un conteneur *Docker* qui 
est automatiquement analysé par *Trivy* avant chaque **build**.

Ainsi le mémoire, par le biais de ces outils, s'inscrit naturellement dans une démarche DevSecOps car, lorsqu'une modification est envoyée (par le biais d'un `git push`), le code est automatiquement construit et analysé, il n'est publié que s'il ne contient pas de failles de sécurité.

Il est important de souligner que *pandoc* permet de générer des fichiers au format *pdf-latex* et ainsi pouvoir embarquer la bibliographie universitaire.

### La bibliographie
La bibliographie du mémoire est générée automatiquement par le biais de l'outil *bibtex*. L'ensemble de la bibliographie est stockée dans le fichier *references.bib*.
On retrouve dans ce document, ce genre de block permettant de créer une nouvelle entrée bibliographique :

```
@ARTICLE{DEDSORD,
  Title                    = {DoD Enterprise DevSecOps Reference Design},
  Author                   = {Chief Information Officer},
  Year                     = {2019},
  Organization             = {Department of Defense (DoD)},
  Pages                    = {1},
  Url                      = {https://dodcio.defense.gov/Portals/0/Documents/DoD%20Enterprise%20DevSecOps%20Reference%20Design%20v1.0_Public%20Release.pdf},
}
```

### Génération du mémoire

Le mémoire est généré par le biais d'un *Makefile*, ce fichier est présent dans le dépôt *Git* du mémoire. La commande à utiliser pour construire le mémoire est donc :

```
make simple
```

Ce qui permet de générer le fichier au format .pdf dans le répertoire *build/*.