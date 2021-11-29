# Le DevSecOps, la finalité

Le but de ce mémoire était d'apporter des réponses sur la manière d'apporter la sécurité dans une démarche DevOps en partant des origines et en essayant d'apporter d'une manière claire des réponses détaillées. Ces réponses ont été apportées en se basant sur une finalité : le **DevSecOps**.

Ainsi, au long de ce mémoire, vous l'aurez compris que dans le domaine du développement agile de logiciel, la sécurité de l'environnement et des produits joue un rôle plus qu'important. Il est donc naturellement nécessaire d'étendre le DevOps vers une approche nouvelle approche : le **DevSecOps**.

Concrètement, l'approche DevSecOps offre tout ce dont nous avons apporté dans le mémoire, bien évidemment, nous n'avons pas souhaité créer un nouveau chapitre sans avoir quelque chose à raconter dans celui-ci.

Effectivement, il nous semble intéressant de vous détailler comment, par le biais du **DoD Enterprise DevSecOps Reference Design**[@DEDSORD], apporter de la cohérence dans votre démarche.

## DoD Enterprise DevSecOps Reference Design (DEDSORD)

Dans l'interview[@MEDIUM] donné par la bloggeuse *Hélène Béal*, *Nicolas Chaillan* [^35] nous explique qu'il a cherché à définir et concevoir un document sur lequel les différentes entités pourraient se reposer pour mettre en application de manière structurée et sérieuse, le DevSecOps dans son organisation.

### Ce qui l'a conduit à créer ce receuil

Nicolas Chaillan nous fait part qu'il a réalisé ce recueil de bonnes pratiques car, lorsqu'il était au département de la défense Américaine (DoD), même lieu où est né le protocole TCP/IP d'ailleurs, celui-ci c'est soucié de :

- Les logiciels et la cybersécurité sont omniprésents dans tous les aspects de la mission du DoD (des systèmes commerciaux aux systèmes d'armes, en passant par l'intelligence artificielle, la cybersécurité et l'espace).
- Fournir des applications rapidement et de manière sécurisée, augmentant ainsi l'avantage concurrentiel des combattants. 
- Améliorer la visibilité de l'entreprise sur les activités de développement et réduire les délais d'accréditation.
- Assurer la portabilité transparente des applications dans l'entreprise, le cloud et les environnements déconnectés, intermittents et classifiés.
environnements classifiés
- Conduire la transformation du DoD vers le développement et la livraison de logiciels *Agile* et *Lean*.
- Tirer parti des meilleures pratiques de l'industrie en matière de fourniture logicielle.
- Pas de document structuré pour mettre en place à bien, l'approche DevSecOps dans son organisation.

Pour ne pas paraphraser ses dires.
 
### La culture DevSecOps

Cette culture peut se résumer en trois grands termes : *Confiance*, la *Responsabilité* et la *Coopération*.

- Pour le premier terme, la *confiance* est efficace tout simplement pour combler le fossé creusé entre le monde DevOps et le monde de la sécurité. Ça passe donc par le fait d'abandonner l'approche traditionnelle du droit de veto de l'équipe sécurité. Il vaut mieux passer par de la surveillance, étant toujours mal perçu, à l'engagement de la chaîne de développement et de production. C'est en partie ceci qu'apporte le DevSecOps et qui est détaillé dans le document du **DoD**.
- Le second terme est la *responsabilité*, il est important que les développeurs comprennent l'intérêt d'avoir une application sécurisée (voir la section sur la formation et la sensibilisation).
- Le dernier terme est la *coopération*, ainsi, il faut casser les silos et travailler ensemble, tout simplement.

### Mise en place de "Security Champions"

Nous l'avons légèrement traité dans le mémoire, l'équipe sécurité n'est pas du tout dimensionnée pour accompagner chaque équipe de développement et de production sur les différentes problématiques de sécurité qu'elles pourraient rencontrer.

Ainsi il est important d'avoir un correspondant de l'équipe sécurité dans chacune de ces équipes, cela permettra ainsi d'assurer l'adhésion des développeurs et des administrateurs à la démarche DevSecOps et de faire respecter les bonnes pratiques du document DEDSORD.

Cette personne est ce que l'on appelle un *Security Champion*.

Il peut avoir divers rôles :

- Evangélisation de la démarche DevSecOps.
- Diffuser la culutre sécurité auprès de son équipe.
- Contribuer à la conception sécurisée de l'architecture de l'application.
- Constituer une veille au respect des différentes bonnes pratiques de sécurité des développements.
- Réaliser ou vérifier les revues de code.
- Rédiger des *user stories* orientées sécurité.

### La station : l'outillage

Il est important de rappeler que pour chaque phase de cycle de vie nous avons des familles d'outils :

- Dans l'étape "*code*", nous avons trouvé l'outil **SAST** [^36], qui analyse le code source et essaie de trouver des modèles de vulnérabilité directement dans le code.
- Dans la phase "*Build*", nous avons trouvé l'outil **SCA** [^37], qui analyse les dépendances et les composants externes du code source (nous en avons discuté dans la section analyse de code).
- Dans la phase "*test*", nous avons trouvé l'outil **DAST** [^38], qui génère des requêtes selon des schémas d'attaque connus pour voir si l'application est vulnérable.
- Dans l'étape "*opération*", nous avons trouvé la solution **MFA**[^39], qui fournit des services d'authentification multi-facteurs (par exemple : **Google Authenticator**).
- Et pour terminer, dans la phase "*Monitor*", on trouve les solutions **SIEM**, qui permettent de gérer et corréler les journaux pour des raisons de *surveillance* et *monitoring*.

## Petite conclusion

Comme nous avons souhaité vous le montrer dans cette section, la mise en place du DEDSORD vise à apporter une vision claire de comment apporter et implémenter la sécurité dans une approche DevOps en apportant un cadre délimité et en donnant une structure prête à l'emploi.

Elle va plus loin qu'une simple vision *DevSecOps* classique en apportant des définitions des manières de faire. Le DevSecOps étant une approche complexe, le DEDSORD le simplifie de par sa propre définition.

[^35]: **Nicolas Chaillan** est responsable logiciel de 'US Ariforce et co-responsable de l'initiative *DEDSORD*.
[^36]: **SAST** signifie "Static Application Security Testing"
[^37]: **SCA** signifie "Software Composition Analysis"
[^38]: **DAST** signifie "Dynamic Application Security Testing"
[^39]: **MFA** signifie "Mutli-Factor Autentication"
