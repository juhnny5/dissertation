# Décortiquer pour mieux analyser 

Dans cette partie, nous allons décortiquer les différentes parties constituantes du DevOps, 
ce qui permettra à terme de ce mémoire d'apporter des réponses claires pour chacune d'entre elles.

Nous vous apporterons dans cette section des ressources essentielles développer le sujet de ce mémoire.

## Un peu de méthodologie

La méthode que j'ai utilisée consiste à lister les différentes parties connues d'une démarche DevOps afin de mieux identifier pour chaque sous-partie,
comment y apporter de la sécurité. J'ai l'avantage de travailler actuellement dans une entreprise dite DevOps, cela m'a donc permis plus facilement de
déterminer les points à citer, pour les améliorer par la suite.

### Autour du DevOps

Pour pouvoir développer la sécurité dans une approche DevOps, il est important de connaître et comprendre les différentes méthodes utilisées au sein du DevOps.
Ces méthodes sont utilisées afin d'accélérer et d'améliorer le développement et le lancement de produits.

Ainsi les méthodes **Scrum**, **Kanban** et **Agile** sont les plus couramment utilisées [@DevOps2018].

#### Du scrum ?

Il est important de comprendre ce qu'est Scrum pour pouvoir apporter un peu de sécurité dans tout cela par la suite.
La méthode **Scrum** définit la manière dont les membres d'une équipe doivent collaborer pour accélérer les projets de développements et d'assurance qualité.

Dans les faits, les pratiques **Scrum** utilisent des *workflows* clés, une terminologie spécifique et des rôles désignés.

Le livre "*A Scrum Book: The Spirit of the Game*"[@Scrum2019] de **Jim COPLIEN** et **Jeff SUTHERLAND** a permis d'apporter une vision plus claire de ce que c'est réellement et de comprendre comment il est appliqué au DevOps pour mieux sécuriser le tout par la suite. Cette logique a été appliquée aux différentes méthodologies gravitantes autour du DevOps.

#### Un Kanban ?

La méthode Kanban, est tout aussi importante que le scrum, développée initialement par *Toyota*[@Toyota2019] [^14] pour améliorer l'efficacité de ces usines de montage (dans l'après-guerre, confère le *Lean Startup* et le *Kaizen*), la méthode Kanban repose sur un suivi des travaux en cours (les TEC) dans un projet logiciel à l'aide d'un tableau Kanban. Vous trouverez en complément l'excellent livre "*Kanban: Successful Evolutionary Change for Your Technology Business*"[@Kanban2010] de **David J. ANDERSON** qui explique en détail ce qu'est la méthode Kanban, comment la mettre en place, pourquoi l'utiliser, etc.

#### De l'agile ?

Et pour terminer avec la méthodologie DevOps, la méthode agile préconise des cycles de développement logiciel plus courts, à l'encontre des méthodes dites "classiques" comme la méthode "*en cascade*" qui est bien plus chronophage. La méthode *agile* dans les faits offre une meilleure réactivité face à l'évolution des besoins en documentant les exigences sous forme de "*user stories*", en organisant des réunions de manière quotidienne (les fameux "*daily standups*") et en intégrant les retours des différents clients de manière continue.

En complément de nos recherches, vous trouverez deux livres excellent, traitant de la méthode Agile. Le premier se nomme "*Coaching Agile Teams: A Companion for ScrumMasters*"[@Agile1] de **Lyssa ADKINS** et le second "*Agile Retrospectives: Making Good Teams Great*"[@Agile2] de **Esther DERBY**.

## Vue d'ensemble de la chaîne d'outils DevOps

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

La planification est la toute première étape d'un processus DevOps, celle où l'on définit le cahier des charges, ce que l'on souhaite mettre en place et fournir.
Cette étape est cruciale pour la suite car, pour pouvoir ajouter la sécurité au sein d'une approche DevOps, il faudra partir de cette étape.

En outre, la phase de planification permet de définir la valeur commerciale et les exigences. On peut utiliser des outils comme *Git*[^11] et *Jira*[^12] pour suivre les problèmes connus et la gestion des projets.

### Le code

La seconde étape dans un processus DevOps consiste à écrire votre code, ce code, dans l'état actuel des choses, n'est pas forcément sécurisée.
Cette phase inclut donc la conception logicielle.

### La création

La phase de création (autrement nommé *build*) consiste à gérer les versions logicielles et à exploiter des outils automatisés pour compiler (comme par exemple *go build* dans le cadre d'un projet **Golang**[^13]) et intégrer le code en vue de sa mise en production.


### Les tests

La phase comprend des tests continus, qu'ils soient *manuels* ou *automatisés*, et tend à assurer une qualité de code optimale.
La qualité de code entend que le code répond bien au fonctionnement attendu, nous y reviendrons un peu plus tard dans ce mémoire sur la qualité de code car c'est un élément essentiel pour la sécurisation du DevOps.

### Le déploiement

La phase de déploiement, comme son nom l'indique, consiste à déployer l'applicatif fraîchement créé, cette phase peut inclure des outils de gestion, de coordination, de planification et d'automatisation de la mise en production. La société dans laquelle j'ai réalisé mon stage (Normation SAS), développe d'ailleurs un logiciel nommé **Rudder** répondant à ces critères et s'inscrivant dans une démarche totalement DevOps.

### L'exploitation ou l'administration

Cette phase permet de gérer les logiciels en production à l'aide de logiciels (comme **Rudder** cité au dessus), ce qui vient à l'inverse de ce que l'on faisait avant dans la gestion de configuration qui était découpé en deux possibilités.

La première était ce que l'on appelait, la configuration "aux petits oignons", dans ce cas de figure, tout le monde pouvait apporter des modifications à notre configuration et ainsi apporter aussi son lot de failles.

La seconde était de créer ce que l'on appelle un "*master*" ou une image système sur laquelle on applique toutes les configurations souhaitées et que l'on déployait par la suite en la clonant.
Vous imaginez bien que ces deux pratiques comportent des risques énormes, le DevOps en corrige certains, mais malheureusement pas tous.

### La supervision

Cette dernière phase permet d'identifier les problèmes affectant une version logicielle placée en production et de collecter/surveiller les informations correspondantes à l'aide d'applications.

## Un tour d'horizon des pratiques DevOps

Pour mieux comprendre et apporter des solutions sur l'ajout de la sécurité dans le DevOps, il est important tout d'abord de comprendre les pratiques DevOps.
Comprendre comment les pratiques DevOps améliorent en continu et automatisent les processus.

Il est important aussi de noter que bon nombre d'entre elles portent sur une ou plusieurs phases du cycle de développement.

### Le développement continu

Cette pratique couvre essentiellement les phases de *planification* et de *programmation* (code) dans un cycle de vie DevOps et on peut y inclure des mécanismes de contrôle des versions (comme *Git* par exemple).

Le mécanisme de contrôle des versions est une première réponse naturelle à l'ajout de la sécurité dans le DevOps car il permet de tracer toutes les modifications apportées dans le temps, au code surveillé. Bien évidemment, ce n'est pas suffisant.

### Les tests continus

Cette pratique prévoit ainsi, des tests automatisés, planifiés et continus lors de l'écriture ou de la mise à jour du code de l'application.
Tout ça dans le but d'accélérer la livraison du code en production.

### L'ntégration continue

Elle rassemble des outils de gestion de la configuration (comme **Rudder** par exemple), de test et de développement pour assurer le suivi de la mise en production des différentes parties du code.
Pour que ça puisse fonctionner correctement, il faut qu'il y ait une collaboration étroite entre les équipes responsables des différents tests et du développement de l'application (souvent la même équipe) pour identifier et résoudre rapidement les problèmes de code éventuels.

On le verra un peu plus tard mais, cette phase est très importante pour améliorer la sécurité du DevOps, c'est par elle qu'une application est intégrée et ainsi il est très important de pouvoir s'assurer de sa correcte intégration (exemple, *les rapports*).

### La livraison continue

La livraison continue, comme son nom l'indique, permet la publication des modifications du code après la phase de test. Très souvent c'est envoyé dans un environnement intermédiaire (environnement situé avant la production), pour s'assurer que l'application ne pose pas de problème une fois en production.

Ces environnements sont régulièrement appelés *préproduction*, ce terme est essentiel car il sera réutilisé par la suite, c'est dans cet environnement que tout sera joué par la suite.

### Le déploiement continu

À l'instar de la livraison continue, le déploiement continu automatise la publication d'un nouveau code ou modifié, on parle alors de *release* dans l'environnement de production.

### La surveillance continue

Cette pratique prévoir une surveillance continue du code exécuté et de l'infrastructure sous-jacente. Les développeurs reçoivent des retours sur les différents bogues rencontrés (via ce que l'on appelle dans le jargon: un *bug track*) ou sur les éventuels bugs rencontrés.

### L'infrastructure en tant que code

Dans la lignée du DevOps, le but est de gérer son infrastructure, non plus de manière manuelle, mais de manière automatisée et en tant que code.
Très régulièrement, c'est dans ce genre de contexte que l'on va retrouver les langages d'y "*déclaratifs*" pour déclarer l'état souhaité de notre infrastructure.

## Les problèmes apportés par la chaîne d'outils

### La sécurité au coeur de la planification?

La question soulevée a un intérêt crucial si l'on souhaite ajouter la sécurité dans une démarche DevOps. Comme il a été expliqué au-dessus, c'est lors de cette phase que tout est joué.
C'est à ce moment-là qu'il faudra prendre les décisions concernant la sécurité.

Dans les faits, la sécurité n'est pas au rendez-vous dans la grande majorité des cas.

## Petite conclusion

Nous avons souhaité, dans cette section, apporter une vision claire et définissons de ce qu'il va falloir surveiller et améliorer si l'on souhaite apporter dans notre approche DevOps.
En effet, la délimitation entre ce qui est *DevOps* et ce qui ne l'est pas n'est pas toujours très claire, d'autant plus que la grande majorité des personnes ont tendance à croire que *DevOps* est le mot à utiliser à tous les coups.

Il était donc important de délimiter les rayons d'action, en délimitant tout ceci, nous allons pouvoir détailler chaque point au fil de ce mémoire.

[^11]: **Git** est un logiciel de [gestion de version décentralisé](https://fr.wikipedia.org/wiki/Git).
[^12]: **Jira**  est un système de suivi de bugs, de gestion des incidents et de gestion de projets développé par la société [Atlassian](https://www.atlassian.com/fr/software/jira).
[^13]: **Golang**  est un langage de programmation compilé et concurrent, inspiré de **C** et développé par [Google](https://golang.org/).
[^14]: **Toyota**  est un constructeur automobile japonais.
