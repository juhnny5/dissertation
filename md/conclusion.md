# Conclusion

Nous l'aurons compris dans ce mémoire, implémenter l'ensemble de ces bonnes pratiques qu'elles soient structurées (ou non avec le **DEDSORD** par exemple) n'est pas simple et nécessite beaucoup de temps ainsi que des ressources compétentes et spécialisées. Il n'est donc pas toujours rare de devoir effectuer des choix, ne serait-ce, tout simplement, qu'en matière de priorisation.

Il est, dans ce cas précis, vivement recommandé de commencer par ajouter les processus qui nous permettrons par la suite de supprimer un maximum de vulnérabilités.

## Priorisation des mesures

Dans cette conclusions, nous souhaitons vous apporter ci-contre la liste des mesures importantes à mettre en place rapidement, ces mesures sont les plus efficaces si elles sont positionnées dans cet ordre :

- Procéder à des tests unitaires
- Analyser de manière automatique le code source (avec des outils comme *SonarQube*)
- Analyser de manière itérative les risques relatifs à l'architecture
- Réaliser des tests d'intrusion applicatifs
- Réaliser des tests automatisés de sécurité (au niveau de l'équipe qualité)
- Etendre les *uses cases* conventionnels aux *abuses cases*.

Bien évidemment, nous n'allons pas nous arrêter là, il convient donc en plus, d'appliquer les bonnes pratiques en terme de sécurité données par le NIST et de prioriser également les mesures les plus efficaces.

## Pour terminer

Comme nous avons souhaité le faire tout au long de ce mémoire, apporter un regard nouveau et une analyse détaillée tout en apportant des réponses claires sur certains points de la sécurité dans le DevOps, il est important de prendre en compte que le DevOps est un domaine vaste et qu'il n'a donc pas été possible de tout détailler et lister (contrainte de temps et de pages).

Le **DEDSORD** est là chose à réellement suivre si l'on souhaite apporter de la cohérence en termes de sécurité dans sa démarche DevOps tendant vers le DevSecOps, mais bien évidemment, il ne faut pas tout prendre pour argent comptant et ainsi, adapter ce recuil à son cas d'usage.
