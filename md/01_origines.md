# Analyse et compréhension des concepts d'origine

Lorsque **Patrick Debois**[^1] créé le terme DevOps en 2009, 
il est très certainement loin de se douter qu'il est l'un des pionnier d'un mouvement 
dont l'influence ne cessera de s'accroître dans le monde du numérique.

Il n'a pas du tout était pensé, lorsque le DevOps a été définit, d'y instaurer la sécurité. 
Pour comprendre comment améliorer de manière significative la sécurité lorsque l'on a une équipe DevOps dans son entreprise, il est 
très important de comprendre en détail, ce qu'est le DevOps, d'où ça vient, etc.

Dans cette introduction, vous trouverez ansi des détails précis sur ce qu'est le DevOps mais aussi de ce qu'il est constitué et des
techniques qui en découlent.


##  D'où vient le DevOps?

Il est intéressant de remonter dans le temps pour connaître et comprendre les origines du DevOps, comprendre d'où ça vient et qu'est-ce qui a donné naissance à ce mouvement.

### Un peu d'histoire

#### Tout démarre d'une problématique

Cette histoire commence en 2007. **Patrick Debois**, homme connu pour être à l'origine du terme "DevOps", était à l'époque *administrateur système*[^2] en tant que consultant sur un projet
de migration de données sensibles pour le gouvernement Belge.

Durant cette migration, il s'est retrouvé totalement impacté par le manque de cohérence de communication entre les développeurs (dev) et les administrateurs systèmes (ops).

C'est de là où est parti le sujet de réflexion sur lequel il voulait trouver des solutions.

#### Création de l'Agile Systems Administration Group

C'est en août 2008, il participe à une conférence agile[^3] de Toronto où il va rencontrer le développeur **Andrew Shafer**[^4] qui voulait présenter un sujet qui l'inspirait: "Agile Instructure" [@AgileRoots2009].

Dans cette conférence qu'il donnera un an plus tard [@AgileRoots2009] qu'il définit le "Wall of confusion", traduit par le fameux "mur de confusion", qui détermine jusque là, la coupure entre les développeurs d'un côté et les opérationnels de l'autre. Cette coupure est d'ailleurs aussi valable avec la sécurité mais j'y reviendrais un peu plus tard au fil de ce mémoire.

Malheureusement, Andrew Shafer n'a pas pu déroulé son sujet car seul Patrick Debois était présent dans cette salle.

Cela leur a permis de discuter ensemble autour de cette problématique qui rongait Patrick Debois depuis quelques temps.
C'est suite à cette discussion qu'ils crééent l'**Agile Systems Administration Group**.

#### De frustré à leader d'un mouvement

En juin 2009, Patrick Debois était dans l'incapacité de participer à une conférence qui l'intéressait: 
"*10+ Deploys Per Day: Dev and Ops Cooperation at Flickr*" [@Velocity2009] de **John Allspaw**[^5] et **Paul Hammond**[^6] au *velocity O’Reilly*[^7].

Le sujet était exactement le type de retour d’expériences qu’il cherchait personnellement.

Il exprime sa frustration sur Twitter[^8] de ne pas avoir pu participer à cette conférence. 

C'est à ce moment là qu'il reçoit un message de **Paul Nasrat**[^9] qui sera l'élément déclencheur de toute la suite.
Ce message était: *"Why not organize your own Velocity event in Belgium?"* qui peut être traduit par ***"Pourquoi ne pas organiser votre propre événement Velocity en Belgique?"***.

A partir de cela, tout va aller très vite, le **30 octobre 2009**, ils réalisent une conférence appelée **DevOpsDays** qui fait référence à
"developpeurs" et "opérationnels" (administrateur système). 

C'est à ce même moment que le *hashtag* **#DevOps** fait son apparition et qu'il devient rapidement viral.

#### Evolution avec le temps

En une dizaine d'année, nous avons pu rencontrer et visualiser les différentes choses qui ont pu découler de ce terme générique, qui est le "DevOps".
Beaucoup de déclinaisons et de sous-mouvements se sont créés, je viendrais à en parler plus tard dans ce mémoire.

#### Rapport avec la sécurité

Comme vous l'avez compris, à l'origine de cette mouvance, il n'a pas été question d'y intégrer la sécurité d'un point de vue stricte du terme.

Justement, l'intérêt que nous voyons dans ce mémoire est d'expliquer comment le faire, quels outils utilisés, quelle méthodologie, etc.

## Que permet de le DevOps?

Ajourd'hui, les applications doivent être produites et déployées en continu. A l'ère du *cloud computing*[^10], les soltions logicielles doivent être évolutives, disponibles,
hyperperformantes avec une latence de plus en plus faible et, bien entendu, à moindre coût.

Ainsi le DevOps permet aux différentes équipes de développement et d'infrastructure, de s'unir et d'être plus reactives face à ces nouvelles exigences.
De par son *design* le DevOps répond à des exigences de sécurité qui ne sont des moindres.

En effet si l'on reprend le principe même de la sécurité et surtout du **DICT** (pour *Disponibilité*, *Intégrité*, *Confidentialité* et *Traçabilité*), le DevOps répond naturellement au premier point de cet acronyme, la **disponibilité**.

Effectivement, l'un des gros intérêt du DevOps est de pouvoir garantir efficacement la disponibilité des applications et ainsi de garantir une partie de sa sécurité.
Malheureusement, ça ne fait pas tout, il faut bien d'autres éléments pour que l'on puisse réellement parler de sécurité au sein du DevOps.

Le DevOps est LE moyen de réussir l'évolution citée ci-dessus, avec comme philosophie, l'idée d'un monde dans lequel chaque composante de l'organisation d'une entreprise
collaborerait efficacement pour l'atteinte de mêmes objectifs.

## Rappel des origines pour mieux comprendre

### Lean Startup : aux origines du DevOps

Le **Lean Startup** est une des briques fondamentales d'une approche DevOps, en effet, cette brique repose sur un point essentiel pour comprendre le DevOps.

La **Learning Loop** ou **boucle d'apprentissage**. Cette boucle est constituée de 3 étapes, sous forme d'un processus itératif.

![Le triptyque fondamental du Lean Startup, autrement appelé "Learning Loop"](img/LEAN-STARTUP.png){width=50%}

#### Etape 1 : construire

A partir des idées de départ, l'étape 1 consiste à constuire une manière de tester auprès des clients.

#### Etape 2 : mesurer

La mesure permet d'apporter de manière importante de la méthode, reléguant l'intuition au second plan, et incitant les entreprises à prendre des décisions basées sur de la donnée.

#### Etape 3 : apprendre

Tester (construire) et mesurer est important, mais pour aller au bout de la démarche, il est très important de formaliser les apprentissages qui découlent de cette approche.
Les anglo-saxons appelent ça "*test and learn*". Pour que ça puisse être possible, il faut savoir prendre du recul, analyser les actions et ce qui a été mesuré.
Vous voyez où nous souhaitons en venir? En effet, nous allons pouvoir se baser de ce même principe du Lean pour commencer l'ajout de la sécurité au sein d'une approche DevOps.

### Kaizen : a la recherche de l'amélioration continue

Le **Lean Startup** est très fortement inspiré du **Kaizen**, ce procédé industriel qui s'est développé au Japon, dans la reconstruction qui a fait 
suite à la seconde guerre mondiale. 

Le mot **Kaizen** est issu de la fusion de deux mots japonais, le premier *kai* et le second, comme on peut le déduire facilement, *zen* qui signifient respectivement *changement* et *bon*.

![Le Kaizen en caractères japonais](img/KAIZEN.png){width=30%}

Ce principe est très important pour comprendre comment apporter la sécurité dans une démarche *DevOps* car il permet d'apporter des bases solides pour ce que l'on va appeler par la suite **CI/CD**.

## Le mémoire dans tout ça

Maintenant qu'avec cette introduction nous avons pu apporter plus d'informations sur le fonctionnement du DevOps et d'où ça vient, nous allons en premier lieu, déterminer les différentes parties du DevOps (de quoi il est constitué). En second temps, nous allons parler des enjeux et impacts sur le *busines*, ensuite nous en viendrois à une solution établie et et pour terminer, nous expliquerons pourquoi avoir fait le choix de cette solution.

[^1]: **Patrick Debois** est un ingénieur et développeur, il est l'inventeur du mot [DevOps](http://www.jedi.be/blog/).
[^2]: Un *administrateur système* est une profession, dans le domaine de l'informatique qui consiste à maintenir et déployer des systèmes informatisés.
[^3]: L'**agilité**, dans un concept d'entreprise permet de s'adapter plus facilement aux changements, de mieux maîtriser le processus de bout en bout et ainsi d'augmenter la satifaction cliente.
[^4]: **Andrew Shafer** est un développeur et co-fondateur du projet [Puppet](https://puppet.com/), outil de gestion de configuration.
[^5]: **John Allspaw** est officiellement "Operations Engineering Manager" chez [Flickr](https://www.flickr.com/), un réseau social très populaire aux Etats-Unis d'Amérique. Il est également écrivain publié chez [O'Reilly](https://www.oreilly.com/).
[^6]: **Paul Hammond** est ingénieur et collègue de John Allspaw [^5] chez [Flickr](https://www.flickr.com/).
[^7]: **Velocity O’Reilly** est une conférence où des acteurs du numérique interviennent.
[^8]: **Twitter** est un réseau social américain.
[^9]: **Paul Nasrat** est "Lead Systems Integration" pour le journal américain [The Guardian](https://theguardian.com).
[^10]: Le **cloud computing** est une infrastructure dans laquelle la puissance de calcul et le stockage sont gérés par des serveurs distants auxquels les usagers se connectent via une liaison internet sécurisée.
