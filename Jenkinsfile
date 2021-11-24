pipeline {
  agent any
  stages {
    stage('Tomcat') {
      steps {
        sh '''docker images
docker run -p 5000:8080 jenkins:2.60.3'''
      }
    }

  }
  post {
    cleanup {
      cleanWs()
      echo 'I will always clean'
    }

  }
}