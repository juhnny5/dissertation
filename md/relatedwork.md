# Décortiquer pour mieux analyser 

Dans cette partie, je vais décortiquer les différentes parties constituantes du DevOps, 
ce qui permettra à terme de ce mémoire d'apporter des réponses claires pour chacune d'entre elles.

## Un peu de méthodologie

La méthode que j'ai utilisé consiste à lister les différentes parties connues d'une démarche DevOps afin de mieux identifier pour chaque sous-parties,
comment y apporter de la sécurité. J'ai l'avantage de travailler actuellement dans une entreprise dite DevOps, cela m'a donc permit plus facilement de
déterminer les points à citer, pour les améliorer par la suite.

### Autour du DevOps

Pour pouvoir développer la sécurité dans une approche DevOps, il est important de connaître et comprendre les différentes méthodes utilisées au sein du DevOps.
Ces méthodes sont utilisées afin d'accélérer et d'améliorer le développement et le lancement de produits.

Ainsi les méthodes **Scrum**, **Kanban** et **Agile** sont les plus couramment utilisées [@DevOps2018].

#### Du scrum ?
...

#### Un Kanban ?
...

#### De l'agile ?
...

## Vue d'ensemble des parties

Le DevOps est découpé en plusieurs sous-parties.

Ces sous-parties sont les suivantes :

- La planification (plan)
- Le code
- La création (build)
- Les tests
- La publication du code construit et valide (release)
- Le déploiement (deploy)
- L'administration (operate)
- La supervision (monitor)

![Diagramme du DevOps](img/DEVOPS.png){width=50%}

### La planification

La planification est la toute première étape d'un processus DevOps, celle où l'ont définit le cahier des charges, ce que l'on souhaite mettre en place et fournir.
Cette étape est cruciale pour la suite car, pour pouvoir ajouter la sécurité au sein d'une approche DevOps, il faudra partir de cette étape.

En outre, la phase de planification permet de définir la valeur commerciale et les exigences. On peut utiliser des outils comme *Git*[^11] et *Jira*[^12] pour suivre les problèmes connus et la gestion des projets.

### Le code

La seconde étape dans un processus DevOps consiste à écrire votre code, ce code, dans l'état actuel des choses, n'est pas forcément sécurisé.
Cette phase inclut donc la conception logicielle.

### La création

La phase de création (autrement nommé *build*) consiste à gérer les versions logicielles et à exploiter des outils automatisés pour compiler (comme par exemple *go build* dans le cadre d'un projet **Golang**[^13]) et intégrer le code en vue de sa mise en production.


[^11]: **Git** est un logiciel de [gestion de version décentralisé](https://fr.wikipedia.org/wiki/Git).
[^12]: **Jira**  est un système de suivi de bugs, de gestion des incidents et de gestion de projets développé par la société [Atlassian](https://www.atlassian.com/fr/software/jira).
[^13]: **Golang**  est un langage de programmation compilé et concurrent, inspiré de **C** et développé par [Google](https://golang.org/).
