# Définir des scénarions d'abus

Habituellement, la validation des scénarios d'utilisation traditionnels (les fameux *use cases* en anglais) doit passer par le développement de ***tests unitaires***[^18].
Ces seuls scénarios ne permettent pas de garantir que l'application répond à toutes les exigences de sécurité. Effectivement, c'est une première approche puisque l'on va chercher à vérifier que notre 
programme répond bien à l'attendu. Cette partie joue forcément un rôle essentiel dans l'amélioration de la sécurité du produit puisqu'elle permet de vérifier *intégrité* (confère : le **DICT** ).

Pour aller plus loin, nous avons donc pris la décision de se diriger vers des *scénarios d'abus* (abuse cases en anglais). Les scénarios d'abus vont bien au-delà des cas d'usages habituels.
Effectivement, comme nous pouvons le constater dans l'article scientifique publié par l'*université Edith Cowan*[@Cowan2011], édité par **Michael N. JOHNSTONE**[^19], ils se focalisent principalement sur les scénarios de malversation des fonctionnalités et sur leurs potentielles conséquences.

Par exemple, il s'agirait de songer à un attaquant :

- Qui pourrait envoyer des données volumineuses ou qui contiendraient des caractères spéciaux, et donc aux différentes répercussions possibles d'un dépasssement de zone mémoire (comme par exemple : une attaque de type *buffer overflow*[^20]) ou d'injections (exemple : SQL, XXE, etc).
- Qui pourrait tenter d'accéder à différentes fonctionnalités ou à des objets auxquels il n'est pas censé avoir le droit d'y accéder.

Comme vous l'aurez compris, cette étape nous permet donc d'identifier, bien des failles de sécurité mais requiert un certain investissement humain non négligeable.
En effet, chaque scénario de malversation devra faire l'objet d'exigences de sécurité spécifiques et de tests d'approbation.

Dans le DevOps, les fonctionnalités de l'application sont amenées à changer rapidement au fur et à mesure de l'identification des besoins des différents utilisateurs, ces
scénarios sont ainsi réajustés durant la phase de développement (**code** dans le cycle DevOps), en même temps que la formation des scénarios d'utilisation (use cases).

Tout comme les tests traditionnels (use cases), les scénarios d'abus (abuse cases) donneront naissance à des tests automatisés.

## Définir la liste des scénarios d'abus

Il existe de nombreuses façons de définir des scénarios d'abus (ou cas d'abus) pour une fonctionnalité. Par exemple, nous allons pouvoir retrouver le projet **OWASP Open SAMM**[^21].

Les scénarios d'abus peuvent être également nommés "*tests de mauvais usage*", pour les mettre en application, on va retrouver 3 niveaux de maturité.

Le premier est celui qui fournit un aperçu du comportement de vos applications face à des entrées inattendues. Le second est celui qui permet la détection de failles de du logique métier applicatif et le dernier est celui qui fournit de manière transparente, de la résilience face aux attaques par déni de service (autrement appelées attaques par *DDoS*).

### Les ressources

Pour que nous puissions appliquer des scénarios d'abus de manière efficace, nous avons besoin de plusieurs profils qui sont les suivants:

Pour que nous puissions appliquer des scénarios d'abus de manière efficace, nous avons besoin de plusieurs profils qui sont les suivants:

- **Analyste d'affaires** : Seront les personnes-clés de l'entreprise qui décriront chaque fonctionnalité d'un point de vue commercial.
- **Analyste des risques** : Sera le personnel chargé des risques de l'entreprise qui évaluera le risque commercial d'une attaque proposée (parfois c'est l' analyste d'affaires selon l'entreprise).
- **Pentester** : Sera l' attaquant qui proposera des attaques qu'il pourra effectuer sur la ou les fonctionnalités métier en question. Si l'entreprise ne dispose pas d'une personne avec ce profil alors il est possible de demander le service d'un spécialiste externe. Si possible, incluez 2 testeurs d'intrusion d'horizons différents afin d'augmenter le nombre d'attaques possibles qui seront identifiées et prises en compte.
- **Responsables techniques des projets** : Seront les techniciens du projet et permettront l'échange technique sur les attaques et contre-mesures identifiées lors de l'atelier.
- **Analyste d'assurance qualité ou testeur fonctionnel** : Personnel qui peut avoir une bonne idée de la façon dont l'application/la fonctionnalité est censée fonctionner (tests positifs), ne pas fonctionner (tests négatifs) et ce qui la fait échouer (cas d'échec).

Il est donc important d'inclures toutes ces personnes dans votre projet DevOps et à terme, dans votre équipe DevOps, pour éviter tout risques de sécurté supplémentaires et limiter les scénarios d'abus extérieurs à l'entreprise.

#### Exemple de remontées

Nous trouverons ici quelques exemples d'une étroite collaboration des différentes parties prenantes.

- Cas d'abus technique signalé : ajoutez l'injection de Cross Site Scripting dans un champ de saisie de commentaire.
- Cas d'abus signalé par une entreprise : possibilité de modifier arbitrairement le prix d'un article dans une boutique en ligne avant de passer une commande, obligeant l'utilisateur à payer un montant inférieur pour l'article recherché.

[^18]: Les *tests unitaires* est une procédure permettant de vérifier le bon fonctionnement d'une partie précise d'un logiciel ou d'une partie d'un programme.
[^19]: **Michael N. JOHNSTONE** est un chercheur en sécurité et author à l'**IEEE**.
[^20]: Le *buffer overflow* est un débordement de tampon est un bug par lequel un processus, lors de l'écriture dans un tampon, écrit à l'extérieur de l'espace alloué au tampon, écrasant ainsi des informations nécessaires au processus.
[^21]: Le [projet](https://owasp.org/www-project-samm/) **OWASP Open SAMM** propose un moyen efficace et mesurable d'analyser et d'améliorer le cycle de vie de développement sécurisé.
