## Exemple : analyse de code statique Golang

L'analyse statique (ou analyse de code statique) est une excellente technique pour détecter les problèmes liés à la sécurité, aux performances, à la couverture, au style de programmation et parfois même à la logique sans exécuter votre application. 
Généralement, ce type d'analyse est exécuté sur le code source de l'application uniquement. Aucune exécution requise.

Il s'agit d'un type d'analyse très simple et puissant à exécuter sur le nouveau code en cours d'intégration. 
La plupart des outils sont conçus pour s'exécuter dans le cadre du pipeline d'*intégration continue* à cause de cela. 

Vous pouvez comparer les résultats du nouveau code et créer des règles d'acceptation basées sur cela. 
Cela aidera le processus de révision du code. Par exemple, vous souhaiterez peut-être rejeter automatiquement une demande d'extraction si un 
nouveau problème de sécurité majeur est introduit à ce sujet, ou si la couverture de test n'est pas satisfaisante.

### Installation et configuration de SonarQube sur Docker
Un bon point de départ pour les personnes qui découvrent SonarQube est de l'installer localement à l'aide de docker. 

Il y a une mise en garde, si vous n'utilisez pas une configuration persistance appropriée pour les conteneurs, chaque fois que vous arrêtez de les exécuter, vos données seront effacées. 
Ce n'est pas grave si vous testez simplement une intégration sur un nouveau projet.

Ce n'est surtout pas à faire en production!
```
docker run -d --name sonarqube -p 9000:9000 sonarqube
```
Voici les étapes pour configurer le serveur SonarQube pour cet exemple :

- Connectez-vous à http://localhost:9000/sessions/new avec l'utilisateur et le mot de passe *admin*
- Cliquez sur puis sur *Create new project*
- Définissez la clé du projet (exemple : "sonarqube-gosec")
- Sur la nouvelle page, générez un token avec n'importe quel nom. Copiez ce jeton et collez-le quelque part, vous en aurez besoin plus tard pour la prochaine étape.
- Sur le dossier racine de votre projet créez un fichier appelé sonar-project.propertiescomme le suivant, en remplaçant les clés et les noms de projet par ceux que vous avez créés.

```
sonar.projectKey=<your-project-name>
sonar.host.url=http://localhost:9000
sonar.login=<token>

sonar.sources=.
sonar.exclusions=**/*_test.go
 
sonar.tests=.
sonar.test.inclusions=**/*_test.go
sonar.go.coverage.reportPaths=cov.out

sonar.externalIssuesReportPaths=report.json
```

La dernière ligne configure l'inclusion du rapport qui sera généré par l'outil *gosec*. Assurez-vous d'utiliser le même nom aux deux extrémités. L'avant-dernière ligne configure également le fichier de couverture, assurez-vous d'utiliser le même nom lors de la création de celui-ci également.

- Installez sonar-scaner à partir d'ici https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/
- N'oubliez pas d'ajouter le dossier */bin* du dossier d'installation à votre PATH

### Installation et configuration de gosec
Vous pouvez installer gosec en tant qu'outil d'utilisation avec :
```
go get github.com/securego/gosec/cmd/gosec
```
Gardez à l'esprit que si vous voulez le faire dans le cadre de votre pipeline CI/CD, vous voudrez probablement le faire comme ils le demandent sur leur page GitHub (où vous pouvez spécifier des versions, etc.). C'est la seule chose que vous devez vraiment faire pour commencer à utiliser *gosec*.
### Application d'exemple
À des fins de test, nous allons créer une application Web simple, avec un point de terminaison ainsi qu'un test unitaire (par souci de couverture).
```
package main

import (
	"crypto/md5"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {

	r := mux.NewRouter()
	r.HandleFunc("/health/{user}", healthHandler)

	srv := http.Server{
		Addr:    "0.0.0.0:8080",
		Handler: r,
	}

	if err := srv.ListenAndServe(); err != nil {
		log.Fatal(err)
	}
}

func healthHandler(rw http.ResponseWriter, r *http.Request) {
	rw.Write(weakHash("Healthy"))
}

func weakHash(value string) []byte {
	hash := md5.New()
	return hash.Sum([]byte(value))
}
```

### Exécution et vérification des résultats
Une fois que nous avons tout installé et configuré, nous pouvons exécuter le script suivant, sur le dossier racine de votre projet, pour générer tous les rapports et les envoyer au serveur SonarQube en utilisant la configuration fournie dans le fichier `sonar-project.properties` .
```
# generate coverage file
go test -short -coverprofile=./cov.out ./...

# generate gosec report in sonarqube format
gosec -fmt=sonarqube -out report.json ./...    

# run sonar-scanner
sonar-scanner
```
C'est tout ce que vous devez vraiment faire. Les résultats devraient être disponibles sur votre serveur SonarQube sous peu.
### Vérification des résultats dans SonarQube
Il ne vous reste plus qu'à accéder à *http://localhost:9000/projects* et cliquer sur votre projet pour voir l'analyse.
### Aller plus loin : le 'coverage'
Nous avons également généré des informations de couverture avec la commande :
```
go test -short -coverprofile=./cov.out ./...
```
Ces informations sont très utiles pour trouver du code non testé et nous pouvons facilement voir quelles parties de la base de code sont couvertes si nous naviguons vers un fichier.
Nous pouvons facilement identifier les pièces qui manquent aux tests grâce à la barre rouge sur le panneau de gauche par les numéros de ligne. 
Les pièces couvertes par les tests apparaissent avec une barre verte à la place. Tous très visuels et très instructifs. Vous pouvez également voir les problèmes sur le fichier sur les petits cercles avec l'icône de gravité (rouge majeur, vert mineur), le tout dans une seule vue. 
