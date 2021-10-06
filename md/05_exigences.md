# Le DevOps et les exigences de sécurité

Dans cette partie, nous allons voir comment apporter des réponses à la définition des *Security Requirements* pour l'application cible au sens assez large du terme.
Puis ensuite, de descendre peu à peu au niveau de ses fonction, en abordant par exemple la couche d'authentification ou le chiffrement des données sur le *backend*[^22].
Dans le DevOps, la règle d'or est de limiter, autant que possible, le formalisme inutile. Ainsi les différentes exigences de sécurité (confère le *DICT*) peuvent prendre la forme
d'un document texte élaboré en concertation avec un consultant de la sécurité du SI. Nous devrons ensuite le partager sur le dépôt du projet et l'actualiser au fut et à mesure de l'évolution de l'architecture.

## Les questions posées

Lors de l'analyse des exigences de sécurité (en rapport avec le fameux *DICT*), nous nous sommes confrontés à plusieurs questionnement:

- **Est-ce testable ?** Pouvons-nous tester cette exigence dans l'application finale ? « Soyez en sécurité » n'est pas une exigence vérifiable. « Encoder toutes les sorties fournies par l'utilisateur » est.
- **Est-ce mesurable ?** Lorsque nous testons cela, pouvons-nous déterminer la couverture et l'efficacité ?
- **Est-ce complet ?** Oublions-nous quelque chose ? Imposons-nous des vérifications des données fournies par l'utilisateur dans les bases de données, mais pas dans les journaux ?
- **Est-ce clair ?** Les personnes responsables de la conception, de la mise en œuvre, des tests et de la mise en œuvre de cette exigence comprendront-elles l'intention de l'exigence ?
- **Est-ce sans ambiguïté ?** Quelqu'un pourrait-il interpréter cette exigence d'une autre manière?
- **Ces exigences sont-elles cohérentes ?** Abordons-nous chaque exigence de sécurité de la même manière pour garantir que les mesures de sécurité sont appliquées de manière cohérente à tous les niveaux ?

Pour que les exigences soient cohérentes et utiles, nous devons nous assurer de répondre aux questions ci-dessus. Ainsi, la meilleure méthode pour répondre aux exigences de sécurité et d'*anticiper* les questions de sécurité (comme celle présentent ci-dessus).

Ainsi si on reprend l'analyse nommée "*Contribution à la vérification d’exigences de sécurité : application au domaine de la machine industrielle*"[@Evrot2008] de **Dominique EVROT**, dans un cadre DevOps, on pourrait distinguer 3 types d'exigences importantes à connaître et comprendre :

- **Les exigences fonctionnelles** décrivent ce qu'un système doit faire. Ainsi, les exigences de sécurité fonctionnelle décrivent un comportement fonctionnel qui applique la sécurité. Les exigences fonctionnelles peuvent être directement testées et observées. Les exigences liées au contrôle d'accès, à l'intégrité des données, à l'authentification et au verrouillage par mot de passe erroné relèvent des exigences fonctionnelles.
- **Les exigences non fonctionnelles** décrivent ce qu'un système doit être. Ce sont des déclarations qui prennent en charge l'auditabilité et la disponibilité. Les exigences de sécurité non fonctionnelles sont des déclarations telles que « les journaux d'audit doivent être suffisamment détaillés pour prendre en charge l'analyse légale ». La prise en charge de l'auditabilité n'est pas une exigence de fonctionnalité directe, mais elle prend en charge les exigences d'auditabilité des réglementations qui pourraient s'appliquer.
- **Les exigences dérivées** sont inspirées des exigences fonctionnelles et non fonctionnelles. Par exemple, si un système a une exigence fonctionnelle d'ID utilisateur et de PIN (mot de passe), une exigence dérivée peut définir le nombre de tentatives de PIN incorrectes autorisées avant qu'un compte ne soit verrouillé. Pour les journaux d'audit, une exigence dérivée peut prendre en charge l'intégrité des journaux, telle que la prévention des injections de journaux.

Les exigences dérivées sont délicates car elles découlent des ***scénarios d'abus*** intérieur et extérieur principalement.

[^22]: Le *backend* est un terme désignant un étage de sortie d'un logiciel devant produire un résultat.
