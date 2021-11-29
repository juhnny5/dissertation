# La revue de code

Dans cette section nous allons commencer à réellement rentrer dans la partie technique du sujet.
La revue de code n'est pas quelque chose de nouveau, c'est quelque chose que les développeurs font déjà depuis très longtemps, là où c'est novateur, c'est que l'infrastructure est maintenant gérée en tant que code (IaC) est ainsi, la revue de code s'applique aussi à l'infrastructure.

L'objectif principal de la revue de code est bien le même que les autres méthodes d'assurance de la qualité du logiciel et par conséquent, de sa sécurité : il s'agit de trouver au plus tôt les défauts qui existent dans le code.

Les bénéfices de la revue de code ne sont bien évidemment plus à démontrer : si l'on reprend les études regroupées par **Capers Jones** sur plus de 12 000 projets, la revue de code collective permet de détecter ainsi, en moyenne, 65% des défauts, 50% pour la revue par un pair, tandis que les tests n'en détectent en moyenne que 30%.

Ainsi nous préconisons de ne pas abandonner les tests d'assurance de la qualité et de la sécurité (comme cité précédemment dans ce mémoire), au contraire, il faut les ajouter.

## Le Static Code Analysis

L'analyse de code statique (ou aussi appelée analyse de code source) est généralement effectuée dans le cadre d'une revue de code (appelé "test de boîte blanche") et est effective lors de la phase 
d'œuvre d'un cycle de vie de développement de la sécurité (SDL).

L'analyse de code statique fait généralement référence à l'exécution d'outils d'analyse de code statique qui tente de mettre en évidence les vulnérabilités possibles dans le code source "statique", c'est-à-dire, sur un code qui n'est pas en cours d'exécution.

Dans les faits, le DevOps ne se limite pas qu'au code d'application, ainsi il faut également surveiller le de généré par des applications plus à destination d'**Ops** (administrateurs système et réseau).

### Analyse du code applicatif (avec outil)

L'analyse du code applicatif avant sa mise en production est primordiale, elle permet d'éviter de se retrouver avec des failles présente dans le code ou tout simplement dans une librairie utilisée par le projet. Ainsi cette phase est extrêmement importante car elle évite (en partit) des failles qui peuvent être rapidement comblées.

L'analyse du code applicatif possède malheureusement certaines limites, ces limites sont celles qui suivent.

#### Première limite : les faux positifs

Un outil d'analyse de code statique produira souvent des résultats faussement positifs lorsque l'outil signale une vulnérabilité possible qui en fait ne l'est pas. Cela se produit souvent parce que l'outil ne peut pas être sûr de l'intégrité et de la sécurité des données lorsqu'elles circulent dans l'application de l'entrée à la sortie.

De faux résultats positifs peuvent être signalés lors de l'analyse d'une application qui interagit avec des composants sources fermés ou des systèmes externes, car sans le code source, il est impossible de retracer le flux de données dans le système externe et donc d'assurer l'intégrité et la sécurité des données.

#### Seconde limite : les faux négatifs

L'utilisation d'outils d'analyse de code statique peut également entraîner des résultats faussement négatifs lorsque des vulnérabilités se produisent mais que l'outil ne les signale pas. Cela peut se produire si une nouvelle vulnérabilité est découverte dans un composant externe ou si l'outil d'analyse n'a aucune connaissance de l'environnement d'exécution et s'il est configuré de manière sécurisée.

#### Les faiblesses de cette analyse 

*Les faiblesses ne sont pas toutes liées à l'analyse même mais plutôt à l'utilisation de tel ou tel outil.*

Nous avons pu voir les limites mais l'analyse de code possède aussi des faiblesses auxquelles il faudra pallier par l'utilisation de méthodologies précédemment citées dans ce mémoire.

La première faiblesse est que de nombreux types de vulnérabilités de sécurité sont très difficiles à trouver automatiquement, comme les problèmes d'authentification, les problèmes de contrôle d'accès, l'utilisation non sécurisée de la cryptographie, etc. L'état de l'art actuel ne permettent à ces outils de trouver automatiquement qu'un pourcentage relativement faible de failles de sécurité des applications. Les outils de ce type s'améliorent cependant.

L'analyse de code applicatif fait automatiquement remonter beaucoup de faux positifs (ce qui peut être contre-productif). Il est souvent impossible de trouver des problèmes de configuration, car ils ne sont pas représentés dans le code (exemple : le `PermitRootLogin yes` dans la configuration du binaire `sshd`).

Il peut être difficile certaines fois de "prouver" qu'un problème de sécurité identifié est une vulnérabilité réelle.

### L'outillage

Certains outils commencent à intégrer l'environnement de développement intégré (IDE). Pour les types de problèmes pouvant être détecté pendant la phase de développement du logiciel elle-même, il s'agit d'une phase puissante du cycle de vie du développement pour utiliser de tels outils, car elle fournit un retour immédiat au développeur sur les problèmes qu'il pourrait introduire dans le code pendant le développement du code. lui-même. Ce retour immédiat est très utile par rapport à la recherche de vulnérabilité beaucoup plus tard dans le cycle de développement.

*Dans cette section nous ne donnerons que quelques exemples connus car, l'outillage est spécifique à chaque langage de programmation.*

Par exemple, pour le langage **Go** de Google, nous retrouvons l'outil *SonarQube*[^30]. Nous avons rédigé un exemple en annexe si vous voulez plus d'informations.

## L'analyse de code déclaratif

Dans une démarche DevOps, le code ne se limite pas qu'à du code applicatif, on va retrouver aussi des outils "déclaratifs" dans lesquels nous allons spécifier l'état souhaité de notre environnement (ou configuration), par exemple, l'outil **Terraform**[^31], par le biais des fichiers *.tf*.

Ainsi il est aussi très important de venir vérifier et valider avant chaque mise en production, tout comme pour le code applicatif, que le code répond bien aux attentes.

[^30]: Un **SonarQube** est un outil d'analyse de code statique Open Source.
[^31]: **Terraform** est un outil développé par la société **HashiCorp** de provision.
