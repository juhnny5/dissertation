# Introduction

Alors que nous souhaitons de plus en plus d'optimisation et d'automatisation au sein de notre système d'information, l'approche DevOps permet d'apporter des réponses à ces besoins.
L'approche nous permet d'apporter de la transparence sur ce qui est réalisé (sur ce que chacun fait plus exactement), améliorer la communication et la collaboration entre les développeurs, les opérationnels et les métiers. Nous verrons comment ça a été réfléchi, les choses qui peuvent être améliorées, comment les améliorer ou les développer plus en détail pour y apporter plus de sécurité.

Il ne faut pas oublier qu'il n'avait pas été prévu dans l'idée initiale d'intégrer de manière efficace la sécurité.
Il est ainsi important de comprendre d'où viennent le DevOps et les différentes motivations qui l'ont animé pour pouvoir apporter des réponses efficaces concernant la sécurité de celle-ci.

Ainsi, nous allons pouvoir se poser une première question importante : Comment livré à haute fréquence du logiciel sécurisé ? En effet, nous le verrons par la suite, mais l'un des principaux points forts du DevOps est de fournir des logiciels rapidement, mais est-ce toujours sécurisé ? Est-ce que ça a été pensé au démarrage ?

## Motivations

Depuis la naissance de ce mouvement, on parle peu de la sécurité, pour que ce mouvement puisse perdurer et être appliqué efficacement dans une entreprise, les entreprises se doivent d'appliquer la sécurité et de faire de la sécurité un axe majoritaire et principal d'amélioration de leur industrialisation par le biais du DevOps.

Les motivations sont nombreuses mais sont toutes rythmées par le même désire, apporter un axe sécuritaire dans ce mouvement novateur.

J'ai été d'autant plus motivé de traiter ce sujet en intégrant la société **Normation SAS** qui m'a fait confiance durant cette année d'alternance et qui développe une solution visant à apporter de la sécurité dans sa démarche DevOps en fournissant un outil innovant.

Comme vous l'aurez compris, parler d'un sujet passionnant et en totale adéquation avec son expérience professionnelle ne peut être qu'un sujet motivant.

## Objectifs

Malgré les différentes réponses naturelles que nous avons pu identifier dans ce mémoire, il reste encore beaucoup à faire et à définir pour apporter de la sécurité dans la mouvance DevOps.

Vous comprendrez au long de ce mémoire comment il apporte naturellement des réponses à des questions de sécurité.
Mais aussi les techniques et méthodes à appliquer pour pouvoir accompagné de manière optimale, les changements culturels et de risques potentiels liées à la sécurité, comment les définir, les relever et les traiter dans une approche DevOps.

Le dernier objectif est bien évidemment, par le biais de retours d'expérience, d'apporter des solutions fonctionnelles (qu'elles soient méthodologiques ou logicielles).

Ainsi nous verrons que l'ajout de la sécurité dans une approche DevOps passe forcément par un changement de mode de pensée, qui jusque-là, visée autrefois, à une approche de sécurisation traditionnelle (c'est-à-dire : une séparation des rôles, un droit de veto de l'équipe de sécurité, la sécurisation sur des besoins figés et de stopper pour auditer).

## Organisation du mémoire

Le mémoire est organisé de la manière suivante :

- La première partie va expliquer d'où vient le DevOps, cette première partie n'est pas là pour remplacer un cours et n'est encore moins tirée d'un support de cours, elle est présente dans le seul et l'unique but de décortiquer les différents éléments de l'approche DevOps. Tout cela dans le but d'identifier où le DevOps apporte déjà des réponses d'un point de vue de la sécurité. Ainsi Nous pourrons ensuite aller dans le détail de ce qui peut être amélioré en termes de sécurité.
- Dans la seconde partie, nous décortiquerons les différentes méthodes qui gravitent autour du DevOps pour comprendre ce qu'elles ont pu apporter et comment par la suite les sécuriser.
- La sécurité d'une entreprise ne passe pas uniquement que par la partie informatique de celle-ci, chaque décision doit soigneusement être clairement établie et doit passer par une étude d'impact sur le *business* afin de limiter les risques liés à celui-ci.
- Le DevOps apporte des méthodes et des solutions pour tester son système informatisé, dans le but d'y rajouter de la sécurité, il est important de comprendre comment mettre en place des scénarios visant à remplacer un potentiel *pirate informatique*.
- Pour aller plus loin dans l'ajout de la sécurité dans la mouvance DevOps, il est bon de rappeler et de déterminer de manière précise, les exigences de sécurité pour mieux les appliquer. Ainsi dans cette section nous trouverons les différentes questions à se poser dès lors que nous souhaitons ajouter de la sécurité au DevOps.
- Ensuite, nous avons réalisé une étude architecturale visant à relever les principaux risques d'architecture, cette section vise à expliquer comment mener à bien cette analyse de risques en apportant des méthodologies.
- Et nous palerons de la revue de code, la sécurisation de l'environnement DevOps, les tests d'intrusion applicatifs, la journalisation et la surveillance, la sensibilisation, l'éducation et la formation.
- Pour en finir, nous parlerons du DevSecOps et tout particulièrement du *DEDSORD*.
