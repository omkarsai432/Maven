pipeline {
  agent any
  stages {
    stage('Tomcat') {
      steps {
        sh '''docker images
docker ps'''
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