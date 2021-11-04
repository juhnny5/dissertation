# Sécurisation de l'environnement

A ce stade, il convient de penser à la sécurité en termes opérationnels, plus particulièrement au déploiement et au maintien de l'application. L'environnement DevOps peut très rapidement devenir gros et complexe. Pour palier à cela, il est très important de suivre les étapes qui vont suivrent pour sécuriser son environnement.

Ces étapes ne viennent pas de n'importe où, en effet, elles proviennent d'un retour d'expérience (autrement appelé rex). Nous estimons qu'il est plus facile d'expliquer quelque chose que l'on a pu mettre en application, ce qui permet également d'apporter une vision plus "éclairée" avec des cas concrets.

- L'identification des composants tiers et leur maintien à jour (de manière automatique si possible). Cette étape permet ainsi de connaître l'état de notre système d'information et ainsi de pouvoir mieux appliquer des correctifs de sécurité au besoin. Nous retrouvons à cette place des outils tels que **Rudder** qui nous permet ainsi de remonter les composants tiers et d'effectuer du *patch management*. 
- La seconde partie très importante est l'automatisation (au mieux) de l'analyse périodique des vulnérabilités, encore une fois, **Rudder** est tout à fait capable de vous remonter les vulnérabilités sur les *packages* installés. Mais celui-ci n'est limité qu'aux serveurs standards et leurs packages. Ainsi plus spécifiquement, pour les parties suivantes, on retrouve :
  * Des systèmes d'exploitation (avec des outils d'analyse comme **Nessus**).
  * Des conteneurs (avec des outils comme *Tenable.io* ou encore *Docker EE*).
  * Des services additionnels comme *Tomcat* ou *MySQL* avec des outils comme *OpenVAS*.

- La vérification de la conformité des configurations applicatives, cette partie peut être réalisée avec des outils de gestion de configuration tels quel **Rudder**, ainsi, nous devons déclarer l'état souhaité de notre configuration selon des règles ou lots de règles comme celles du **NIST** ou encore des **benchmarks CIS**. Nous pouvons également utiliser *OpenSCAP* développé par la société **Red Hat/IBM** pour effectuer cet vérification/audit.

- Ensuite, nous devons réaliser un cloisonnement des environnements entre les applications, afin de limiter au mieux les effets d'une intrusion. Ce cloisonnement est plutôt habituel pour les équipes d'administration (ops), mais est un concept tout nouveau pour les équipes de développeurs (dev), ainsi, nous comprennons à quel point il est important dans la culture DevOps de comprendre et assimiler les techniques des deux équipes. 
  * Le cloisonnement peut prendre plusieurs formes, la première est des machines virtuelles ou encore des conteneurs différents répartis sur des **VLANs**[^33] ou des réseaux segmentés (donc séparés).

- Nouveau point pour les développeurs, qui jusque là n'avaient pas à s'en préoccuper, la bonne configuration des pare-feux réseaux et applicatifs (*waf*[^34]) de manière à garantif suffisamment de flexibilité au moment du déploiement tout en limitant l'impact d'une intrusion sur l'une des machines de l'infrastructure cible.

- La limitation du choix des composants, notamment des OS et des images. Ainsi, il s'agit d'une réelle amélioration de la sécurité, maux malheureusement, au prix d'une charge de travail importante, il est donc important de l'inclure dans la phase du BIA. Tout ceci génère une perte de productivité conséquente.

- La gestion des ressources externes, notamment en termes de suivi des dépendances et de contrôle d'intégralité des librairies tierces utilisées avec des outils comme *SonarQube* précédemment cité.
- Et pour terminer, nous devons effectuer périodiquement des tests d'intrusion traditionnels (pentest traditionnels). Ils vont nous permettre d'obtenur une vue d'ensemble du niveau de sécurité et vont également prendre en considération la topologie réseau, les protocoles de communication et les dispositifs de filtrage comme les firewalls et les WAF.

Ainsi, nous avons pu apporter des réponses sur la sécurisation de l'environnement DevOps.

[^33]: Un **VLAN** pour *Virtual Local Area Network* est un réseau virtuel dans un segment TCP/IP.
[^34]: Un **WAF** pour *Web Application Firewall* est un pare-feux applicatif.
