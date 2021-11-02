# Analyse de l'impact sur le business

Le DevOps n'intègre pas cette notion lorsque l'on reprend ce dont il est constitué même si, de manière totalement naturelle, il y répond partiellement.
L'impact sur le business est extrêmement important et doit être pris en compte. La sécurité n'est donc pas qu'informatique, elle a aussi un intérêt pour le business.

## Le Business Impact Analysis

La première réponse à cette problématique d'analyse de l'impact sur le business est de réaliser ce que l'on appelle un ***Business Impact Analysis***. Il s'agit, tout simplement, d'évaluer l'impact qu'aurait une compromission sur le business, et ainsi de pouvoir mieux impliquer les départements concernés.

Tout cela peut être fait en chiffrant les éventuelles conséquences *directes* (comme le disfonctionnement de la production) et *indirectes* (comme une atteinte réputationnelle).

Cette réalisation est simple et rapide, elle permet de s'assurer que les équipes de sécurité, DevOps et le business sont alignés sur les menaces et leurs conséquences.

### Conduire un BIA

A vrai dire, il n'existe pas réellement de normes formelles pour un **BIA**[@Bia2014]. La méthodologie peut varier selon l'organisation.

Dans la majorité des cas, ont peut déceler les étapes suivantes pour la réalisation d'un BIA :

- La collecte d'informations
- L'évaluation des informations récupérées
- Préparation d'un rapport pour documenter les résultats
- Présenter les résultats à la direction

Une organisation peut choisir de confier l'analyse d'impact sur les clients à un tiers compétent ou d'inclure du personnel interne et externe dans l'équipe de projet.
La première solution étant la plus viable.

Un questionnaire ou une enquête détaillée est généralement élaboré(e) pour identifier les processus opérationnels, les ressources, les relations et autres détails essentiels.

Ces informations sont essentielles pour évaluer l'impact potentiel d'un événement perturbateur.

Une séance d'information peut être organisée à l'intention du personnel clé qui connaît l'entreprise. Les informations peuvent être recueillies de diverses manières, notamment par des entretiens en personne et des enquêtes automatisées. Des entretiens de suivi peuvent être nécessaires.

## Réduction naturelle des coûts avec le DevOps

Le DevOps apporte naturellement des réponses pour ce qui est de l'impact sur le business. Il permet nottament de faire des économies en supprimant grand nombre de processus.
En effet, en rendant l'infrastructure résiliente, l'automatisation, l'accélération du *time-to-market*, le DevOps apporte des solutions pour faire baisser les coûts. Mais est-ce toujours le cas?

### Mesurer le ROI du DevOps

Il est vraiment très important de mesurer le **ROI**[^15] du DevOps avant de le mettre en application, en effet, le DevOps n'est pas toujours adapté à certains projets.
Vous pourrez ainsi, par le biais du ROI, mesurer de l'efficacité d'un investissement en termes de rentabilité.

Il permet de planifier le projet, d'anticiper le coût et de fixer des objectifs pour la réussite de ce projet.

La formule du ROI:

![Formule du retour sur investissement](img/ROI.png){width=20%}

A noter que **g** est égale au *gain de l'investissement* et **c** est égale au *coût de l'investissement*.

Ainsi, le calcul du ROI nous permettra de voir si le projet est réalisable et de commencer à réfléchir à la manière de le mettre en place. Cette phase doit être réalisée avant ou durant la phase de *plan* du schéma DevOps habituel.

Beaucoup d'entreprises ne font pas cette démarche, c'est ce qui fait que l'on arrive très régulièrement à des situations de *rollback* (retour arrière) ou d'**échec**.
En effet, selon une étude menée par AppDynamics et l'IDC[@Downtime2016], le dysfonctionnement des infrastructure peut représenter une perte considérable par heure (environ de 8000$ à ~690 000$) selon la taille de l'entreprise.

Il est curcial de faire ce calcul avant ce commencer des démarches.

### Les métriques à prendre en compte

#### Le downtime

Le *downtime*[^16] est la première métrique à prendre en compte. Elle concerne les incidents de production. Ainsi, nous devons calculer la perte moyenne de revenus de l'entreprise pour N minutes de *downtime*. Nous devons ensuite regarder l'année passée, plus exactement le temps total de panne. Nous y ajoutons le coût humain pour la répération des incidents. C'est cette perte de revenu que nous allons pouvoir optimiser.

#### La productivité

Le DevOps apporte tout un lot d'avantage, la *productivité* accrue en fait parti. En effet, lorsqu'une entreprise passe à une organisation DevOps, la vitesse de production est naturellement augmentée.
Si l'on reprend l'étude nommée "2017 State of DevOps Report"[@Puppet2017] de la société **PuppetLabs**[^17], le DevOps permet 30 fois plus e déploiements effectués pour 60 fois moins d'incidents (en prenant en compte la réduction des *downtimes*).

Le DevOps permet de passer 440 fois moins de temps pour délivrer une nouvelle fonctionnalité (feature). Comme nous pouvons le constater, il est indéniable que le DevOps apporte naturellement des solutions pour garantir la sécurité du business.

### Maximiser le ROI du DevOps

#### Des objectifs clairs et définits

Avant tout commencement de projet, il faut définir ce que l'on appelle un "*succès*". C'est l'objectif que l'on doit absolument atteindre, il doit être mesurable quotdiennement et auditable.
C'est crucial pour observer clairement l'impact de vos actions sur l'objectif.

Cet objectif doit également être réalisable dans un délai donné et ne pas être trop ambitieux car il risquerait de mettre en péril la stabilité financière du projet (vis-à-vis du budget alloué) mais aussi de l'entreprise (par exemple : développement d'une nouvelle fonctionnalité vitale pour l'outil).

Le DevOps apporte des solutions mais n'est pas la réponse à tout, nous allons continuer à détailler, comment améliorer la sécurité financière de son entreprise/projet dans la suite de ce mémoire.

[^15]: Le **ROI** signifie *retour sur investissement*.
[^16]: Le **downtime** ou *taux d'indisponibilité* est le pourcentage de temps pendant lequel un service ou une machine a été hors-service ou inactif sur une période donnée.
[^17]: Le **PuppetLabs** est un éditeur logiciel DevOps.
