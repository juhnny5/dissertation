## Exemple : analyse de code statique Golang

blabla ...

https://levelup.gitconnected.com/static-code-analysis-for-golang-5f24b555d227

### Installation et configuration de SonarQube sur Docker

```
docker run -d --name sonarqube -p 9000:9000 sonarqube
```

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

### Installation et configuration de gosec

```
go get github.com/securego/gosec/cmd/gosec
```

### Application d'exemple

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

```
# generate coverage file
go test -short -coverprofile=./cov.out ./...

# generate gosec report in sonarqube format
gosec -fmt=sonarqube -out report.json ./...    

# run sonar-scanner
sonar-scanner
```

### Vérification des résultats dans SonarQube

### Aller plus loin : le 'coverage'

```
go test -short -coverprofile=./cov.out ./...
```
