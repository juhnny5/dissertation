# L'analyse des risques architecturale

Une autre réponse à l'instauration de la sécurité dans une approche DevOps est ce que l'on peut appeler l'*Architectural Risk Analysis*.
Cette analyse permet d'évaluer le niveau de sécurité de la solution en analysant plusieurs éléments, par exemple, son design, tout en corrélant ses 
faiblesses aux impacts business identifiés.

Cela consiste donc à décomposer les processus, les flux de données, les zones de stockage et les limites de confiance. Et pour terminer, cette analyse permet également 
à les confronter aux scénarios d'attaques usuels afin d'évaluer leur potentielle probabilité d'occurrence.

C'est le **CISA**[^23] qui publié en *octobre 2005* cet article ("*Architectural Rist Analysis*"[@Cisa2005]) afin de mettre en évidence les différents éléments à prendre en compte pour l'analyse des risques architecturale.

## Les méthodes à notre disposition

Dans cette section, nous allons voir les différentes possibilités qui nous sont disponibles et celle que nous avons choisie. Bien évidemment, il existe grand nombre de méthodes pour l'analyse de risque (*MEHARI*[^24] par exemple ou encore **EBIOS Risk Manager**[^25]), nous allons nous concentrer sur deux méthodes qui sont plus adaptées à une analyse de risques **architecturale**, ce dernier *mot* est très important pour le choix de la méthode.

Pourquoi ne pas avoir choisi la méthode **MEHARI** ou **EBIOS Risk Manager**, tout simplement parce que ces modèles montrent souvent leurs limites, en particulier par rapport à leur complexité (voir leur lourdeur) de mise en œuvre. Il nous faut beaucoup de ressources (nous entendons par *efforts* et *investissements*).

Il peut arriver que dans certains cas de figure, qu'ils s'avèrent *contre-productifs*, en effet, ils mettent en jeu des processus peu résilients aux changements et aux évolutions ce qui est va à l'encontre de la démarche *DevOps*. A l'inverse, si l'on ne fait pas de DevOps, cette limitation prend tout son sens pour les grandes entreprises qui possèdent des systèmes d'informations complexes.

Aux antipodes des processus de sécurité habituels, le DevOps et le contexte de business qui l'irrigue sont régis par de nouvelles règles de jeu, de méthode de gestion de projet. Ainsi les concepts habituels de sécurité sont complètement bousculés et c'est donc pour cela qu'il a fallu partir sur une autre méthodologie.

### Le STRIDE & DREAD, plus qu'éprouvé!

La *modélisation des menaces* et l'*analyse des risques* est sensiblement la même chose. La modélisation des menaces STRIDE est un outil très important dans l'arsenal d'un expert en sécurité au sein d'une équipe DevOps. Effectivement, la modélisation des menaces permet de fournir aux équipes de sécurité un cadre pratique pour faire face à une menace.

STRIDE[@STRIDE] se veut être une méthodologie éprouvée développée par **Microsoft**[^26] dans les années 1990 (par *Loren Kohnfelder*[^28] & *Praerit Garg*[^27]) pour accroître la compréhension des risques et menaces autour d'une application.

Elle permet d'identifier les vecteurs d'attaques suivants:

| STRIDE | Attaques |
|-------------:|:------------|
|          Spoofing | Cookie Replay, Session Hijacking, CSRF         |
|          Tampering | XSS, SQL Injection          |
|          Repudiation | Audit Log Deletion, Insecure Backup         |
|          Information Disclosure | Eavesdropping, Verbose Exception         |
|          Denial of Service | Website defacement         |
|          Elevation of Privilege | Logic Flow Attacks         |

: Tableau des attaques associées au *STRIDE* de la conférence "*Advanced Threat Modeling*" de l'**OWASP**. [@ATMOwasp] \label{tab:ugh}

Nous trouverons un exemple de menaces STRIDE en annexe de ce mémoire. Le STRIDE ne peut être utilisé seul dans une approche DevOps, il doit venir avec la méthode **DREAD** qui va nous permettre d'estimer leur niveau de risque. Dans le modèle DREAD, si permet d'établir un tableau avec différentes valeurs. Ces valeurs sont ce que l'on appelle les *5 points clés du modèles DREAD*.

1. **dommage** : quel est le montant total des dommages que la cyber menace est capable de causer à votre entreprise ?
2. **Reproductibilité** : Avec quelle facilité d'autres pirates informatiques peuvent-ils reproduire la ccybermenace?
3. **Exploitabilité** : Combien de temps et d'énergie sont nnnécessairespourexploiter la menace et, ainsi, effectuer une cyberattaque contre votre entreprise ?
4. **Utilisateurs concernés** : combien de personnes, à l'intérieur ou à l'extérieur de votre entreprise, seront affectées par la cyber menace ?
5. **Découvrabilité** : Pouvez-vous facilement découvrir la cyber menace ?

Ainsi le modèle DREAD nécessite d'attribuer une nnnroutedeunà trois (*low*, *medium, *high*) à chacun des cinq points-clés Pour terminer, toute cyber menace donnée devrait avoir une note totale de cinq à quinze. Nous trouverons un exemple de tableau *DREAD* en annexe de ce document.

### OCTAVE Allegro, la méthodologie nouvelle génération!

OCTAVE Allegro[@OCTAVE2007] est un *framework*[^29] pour la gestion des risques, ce framework est la troisième et dernière version d'**OCTAVE** (pour *Operationally Critical Threat, Asset and Vulnerability Evaluation*). A l'origine **OCTAVE** fut développé par la *CERT Survivable Enterprise Management Team*, cette méthodologie permet d'identifier et d'évaluer les risques de sécurité associés aux systèmes d'information.

Plus exactement :

- De développer des critères qualitatifs d'évaluation de risque.
- D'identifier les actifs.
- D'identifier les vulnérabilités et les menaces.
- Et pour terminer, d'évaluer les conséquences sur les objectifs d'affaires si une attaque réussit.

Il faut voir le *CERT OCTAVE* comme une famille de processus visant à remplacer le combo **STRIDE/DREAD**.

Dans cette famille, on y retrouve donc plusieurs version qui sont à utiliser en fonction de notre organisation.

La première est **OCTAVE-S v1.0** qui est destinée aux organisations de taille moyenne (~100 employées)s), dans lesquelles nous avons une équipe d'analystes, une excellente connaissance de l'organisation mais une connaissance technique limitée (par exemple, que l'on ne connait pas quel type de serveur web est en place).

La seconde est **OCTAVE v2.0** est plutôt destinée aux grandes organisations (~300 et + d'employée)s), on va y retrouver une hiérarchie (pour les équipes IT) à plusieurs niveaux, une infrastructure IT interne et une connaissance technique importante (avec une évaluation des vulnérabilités). Cette méthode n'est pas totalement compatible avec le DevOps qui, de plus en plus
visait à externaliser certaines informations (via le Cloud par exemple).

Et pour terminer, nous retrouvons **OCTAVE Allegro** qui permet une évaluation rapide des risques (ce qui est très important dans une démarche DevOps, nous recherchons à être efficaces et rapides) avec une excellente connaissance de l'organisation mais une connaissance technique limitée.

Il est important de souligner que pour placer efficacement cette méthode, il est important de respecter les 8 grandes étapes qui sont les suivantes :

- Etablir les critères d'évaluation du ou des risques
  * Définir un ensemble de mesures qui permettra d'évaluer l'impact des menaces sur les objectifs d'affaires (lien avec le BIA précédemment cité) afin de déterminer le niveau de risque.
  * Prioriser les mesures d'impact de la plus importante (5) à la moins importante (1).
- Etablir les profils des actifs informationnels
- Identifier les intervenants et les contenants
  * Identifier les contenants techniques (internes et externes, les serveurs d'applications par exemple).
  * Identifier les lieux physiques (internes et externes, où sont stockées les copies des sauvegardes).
  * Identifier les intervenants (personnes internes et externes).
- Identifier les domaines de préoccupation
  * Décrir une situation pouvant affecter un actif
- Identifier les scénarios de menaces
  * On y retrouve la menace, les scénarios d'abus/d'une menace et l'arbre de menaces permettant de visualiser un ensemble de scénarios de menace. 
- Identifier les risques
  * Pour chaque scénario d'abus ou de menace identifié, déterminer les conséquences. 
- Analyser les risques
  * Déterminer la valeur qualitative de l'impact d'une menace pour l'organisation (voire annexe). 
- Choisir une approche face aux risques
  * il faut *accepter* (fatalité), l'*atténuer* (réduire l'impact d'une attaque réussie), *retarder la décision* (plus d'informations sont nécessaires, continuer l'analyse), *transférer* (assurance).

### Le choix effectué

La gestion des risques et l'analyse des risques est une étape assez laborieuse mais primordiale, car plus de la moitié des problèmes de sécurité sont malheureusement la résultante de problèmes d'architecture. Ainsi, la méthode **OCTAVE Allegro** s'apprête au mieux au contexte DevOps en apportant des réponses tout en étant adaptée au contexte.

Dans le DevOps, l'architecture peut évoluer drastiquement au gré de la formation des différents besoins. Ainsi l'analyse peut être réalisée sous la forme d'ateliers réguliers avec un consultant en sécurité informatique, il est donc important que les différentes parties aient connaissance de la méthodologie **OCTAVE Allegro**.

Ces ateliers peuvent influencer les choix d'architecture et par conséquent, faire évoluer les exigences de sécurité.

[^23]: Le *CISA* est une agence fédérale américaine.
[^24]: **MEHARI** est une méthode d'analyse de risques.
[^25]: **EBIOS Risk Manager** est une méthode d'analyse de risques tout comme **MEHARI**.
[^26]: **Microsoft** est une société d'informatique américaine.
[^27]: **Praerit Garg** est un ingénieur chez *Microsoft*.
[^28]: **Loren Kohnfelder** est un ingénieur chez *Microsoft*.
[^29]: Un **framework** désigne un ensemble de composants logiciels structurels, ainsi il se distingue d'une simple bibliothèque logicielle.
