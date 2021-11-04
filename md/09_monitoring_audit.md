# La journalisation et la surveillance

La journalisation (ou *loggin*) et la surveillance (*monitoring*) des événements sont vitaux en DevOps comme en sécurité de manière globale.
Ils doivent particulièrement permettre de détecteur au plus tôt les intrusions et actions anormales, mais également de corriger les effets d'une attaque.

Ainsi toutes les composantes doivent pouvoir envoyer des journaux des modifications et des événements apportés à celui-ci.

Par exemple, tout redémarrage manuel d'un conteneur Docker doit être journalisé de sorte à pouvoir blâmer la personne qui a fait une modification non-autorisée ou tout simplement pouvoir 
remonter à un potentiel pirate informatique.

De ce fait, la journalisation est primordiale et il convient donc de considérer les informations relatives à l'utilisation des données (comme, tout simplement, le nombre et la taille des transactions), en plus des événements usuels.

## La surveillance des parties

Nous nous devons, par le biais d'outils modernes comme *Prometheus* par exemple, de pouvoir couvrir les éléments suivants :

- La **disponibilité** des serveurs, des réseaux, des applications (logiciels), des processus, etc.
- La **disponibilité** des ressources d'un système, telles que l'espace disque, la mémoire ou encore le CPU.
- La **performance**, par exemple, les temps de réponse d'une application, si une application met du temps à répondre de manière anormale, il est probable que celle-ci soit attaquée, il nous conviendra alors de mettre en place de l'*alerting* et du *reporting*, nous y reviendrons après.
- La **fiabilité** et la **qualité** par analyse de la disponibilité (voir l'impact sur le business et le calcul du taux de disponibilité) sur une période donnée.
- La **sécurité** d'un point de vue générique du terme, pour prévenir des attaques (exemple : supervision des logs du *waf*).

### Se faire alerter

Dans certains cas, pour maintenir un certain niveau de sécurité, il conviendra de mettre en place de l'*alerting* sur certaines composantes de notre système d'information.
Nous devrons ainsi déclarer et relever les informations suivantes :

- Qui contacter en cas de dysfonctionnement d'une composante?
- Que dois-je superviser?
- Est-ce que ça vaut la peine d'être alerter?
- Comment et où l'intégrer dans notre pipeline DevOps? 
  * Exemple :  Configurer *Prometheus* lors de la mise en place du serveur via l'utilisation d'*Ansible*.

Ces questions sont très importantes pour pouvoir placer efficacement la sécurité dans notre *pipeline* DevOps.

### Rapport sur un laps de temps donné

Une nouvelle fois, en complément de l'audit de configuration, il est très important d'obtenir un rapport sur un période donnée de l'état de nos services et configuration.

## De la fonction intiale de la journalisation de ses applications

Lorsqu'un événement inattendu intervient sur un équipement réseau (comme une panne), un administrateur commence par analyser des fichiers de journalisation autrement appelés "les logs".
Ces derniers sont générés par les applications, services mais aussi par des équipements. Ils rencesent l'ensemble des événements survenus et ceci, en temps réel.

La journalisation possède plusieurs niveaux (debug, warning, critical, etc). Ainsi il n'est pas nécessaire d'activer l'envoie de toutes les informations (via le *debug*), sinon, les informations seront difficilement traitables.

Ainsi un événement se caractérise par exemple, tout simplement, par un changement d'état d'une interface si on prend le cas d'un équipement réseau (commutateur). Concrètement, les journaux correspondent à des messages textes qui sont généralement stockés sur la machine permettant à un administrateur de connaître l'activité de l'actif en temps réel. Il conviendra donc d'envoyer les bonnes informations de sorte à ce quelles soient lisibles par un **SOC**.

Dans le cadre d'une démarche DevOps, il est important de suivre les *recommandations de sécurité pour la mise en oeuvre d'un système de journalisation*[@ANSSI2013] de l'ANSSI publiées en 2013 qui sont encore valables actuellement. Bien évidemment, il nous faudra appliquer ces recommendations en prenant compte les cas de figures de votre système d'information intégrant le DevOps.

### Cas concret : rsyslog au service du bien

Dans un environnement DevOps, il est tout même rare de retrouver des machines Windows, la grande majorité du temps, les machines fonctionnent sous GNU/Linux, ainsi, il convient donc de configurer et renforcer la sécurité du service *rsyslog* nos machines.

Nous devons définir des règles de sorte à ne récupérer que les messages importants, par exemple, prenons le fichier de journalisation régulièrement utilisé sur les distributions Debian `/var/log/messages` :

```
Feb  6 18:29:26 srv-log systemd: Started Session 257 of user root.
Feb  6 18:29:26 srv-log systemd-logind: New session 257 of user root.
Feb  6 18:29:27 srv-log root: Ceci est un texte d erreur
Feb  6 18:39:56 srv-log systemd: Started Session 259 of user root.
Feb  6 18:39:56 srv-log systemd-logind: New session 259 of user root.
Feb  6 18:40:04 srv-centos1 systemd-logind: New session 260 of user root.
```

Ainsi, nous pouvons renvoyer les bonnes informations dans des fichiers "splités" par le biais d'une règles *rsyslog* qui est la suivante :

```
$template DynamicFile,"/var/log/syslogclients/%fromhost%-syslog.log"
*.* ?DynamicFile
```
