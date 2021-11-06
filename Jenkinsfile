pipeline {
  agent any
  stages {
    stage('Tomcat') {
      steps {
        sh '''ls
systemctl start docker
docker build -t tomcat8 .
docker images
docker run -p 80:8080 tomcat8
curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
'''
      }
    }

  }
}