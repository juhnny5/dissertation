# L'analyse des risques architecturale

Une autre réponse à l'instauration de la sécurité dans une approche DevOps est ce que l'on peut appeler l'*Architectural Risk Analysis*.
Cette analyse permet d'évaluer le niveau de sécurité de la solution en analysant plusieurs éléments, par exemple, son design, tout en corrélant ses 
faiblesses aux impacts business identifiés.

Cela consiste donc à décomposer les processus, les flux de données, les zones de stockage et les limites de confiance. Et pour terminer, cette analyse permet également 
à les confronter aux scénarios d'attaques usuels afin d'évaluer leur potentielle probabilité d'occurrence.

C'est le **CISA**[^23] qui publié en *octobre 2005* cet article ("*Architectural Rist Analysis*"[@Cisa2005]) afin de mettre en évidance les différents éléments à prendre en compte pour l'analyse des risques architecturale. 

## Les méthodes à notre disposition

Dans cette section, nous allons voir les différentes possibilités qui nous sont disponibles et celle que nous avons choisi. Bien évidemment, il existe grand nombre de méthodes pour l'analyse de risque (*MEHARI*[^24] par exemple ou encore **EBIOS Risk Manager**[^25]), nous allons nous concentrer sur deux méthodes qui sont plus adaptés à une analyse de risques **architecturale**, ce dernier *mot* est très important pour le choix de la méthode.

Pourquoi ne pas avoir choisi la méthode **MEHARI** ou **EBIOS Risk Manager**, tout simplement parce que ces modèles montrent souvent leurs limites, en particulier par rapport à leur complexité (voir leur lourdeur) de mise en œuvre. Il nous faut beaucoup de ressources (nous entendons par *efforts* et *investissements*). 

Il peut arriver que dans certains cas de figure, qu'ils s'avèrent *contre-productif*, en effet, ils mettent en jeu des processus peu résilients aux changements et aux évolutions ce qui est va à l'encontre de la démarche *DevOps*. A l'inverse, si l'on ne fait pas de DevOps, cette limitation prend tout son sens pour les grandes entreprises qui possèdent des systèmes d'informations complexes.

Aux antipodes des processus de sécurité habituels, le DevOps et le contexte de business qui l'irrigue sont régis par de nouvelles règles de jeu, de méthodologie de gestion de projet. Ainsi les concepts habituels de sécurité sont complètement bousculés et c'est donc pour cela qu'il a fallut partir sur une autre méthodologie.

### Le STRIDE & DREAD, c'est plus qu'éprouvé!

La modélisation des menaces et l'analyse des risques est sensiblement la même chose. La modélisation des menaces STRIDE est un outil très important dans l'arsenal d'un expert en sécurité au sein d'une équipe DevOps. Effectivement, la modélisation des menaces permet de fournir aux équipes de sécurité un cadre pratique pour faire face à une menace.

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

Cette première méthode est excellente pour repérer les menaces pendant la phase de conception d'une application ou d'un système (dans une démarche DevOps, ça sera lors de la phase **"code"**).
Elle permet, en premier lieu, de détecter les menaces potentielles à l'aide d'un processus proactif. Ainsi, naturellement cette méthode vise à garantir qu'une application respecte l'acronyme **DICT**.

Nous trouverons un exemple de menaces STRIDE en annexe de ce mémoire. Le STRIDE ne peut être utilisé seul dans une approche DevOps, il doit venir avec la méthode **DREAD** qui va nous permettre d'estimer leur niveau de risque. Dans le modèle DREAD, si permet d'établir un tableau avec différentes valeurs. Ces valeurs sont ce que l'on appelle les *5 points clés du modèles DREAD*.

1. **Dommages** : quel est le montant total des dommages que la cybermenace est capable de causer à votre entreprise ?
2. **Reproductibilité** : Avec quelle facilité d'autres pirates informatiques peuvent-ils reproduire la cybermenace ?
3. **Exploitabilité** : Combien de temps et d'énergie sont nécessaires pour exploiter la menace et, ainsi, effectuer une cyberattaque contre votre entreprise ?
4. **Utilisateurs concernés** : combien de personnes, à l'intérieur ou à l'extérieur de votre entreprise, seront affectées par la cybermenace ?
5. **Découvrabilité** : Pouvez-vous facilement découvrir la cybermenace ?

Ainsi le modèle DREAD nécessite d'attribuer une noute de un à trois (*low*, *medium*, *high*) à chacun des cinq points clés. Pour terminer, toute *cybermenace* donnée devrait avoir une note totale de cinq à quinze. Nous trouverons un exemple de tableau DREAD en annexe de ce document.

### OCTAVE Allegro, la méthodologie nouvelle génération!

### Le choix effectué

[^23]: Le *CISA* est une agence fédérale américaine.
[^24]: **MEHARI** est une méthode d'analyse de risques.
[^25]: **EBIOS Risk Manager** est une méthode d'analyse de risques tout comme **MEHARI**.
[^26]: **Microsoft** est une société d'informatique américaine.
[^27]: **Praerit Garg** est un ingénieur chez *Microsoft*.
[^28]: **Loren Kohnfelder** est un ingénieur chez *Microsoft*.