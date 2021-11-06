pipeline {
  agent any
  stages {
    stage('Tomcat') {
      steps {
        sh '''ls
docker build -t tomcat8 .
docker images
docker run -p 80:8080 tomcat8'''
      }
    }

  }
}