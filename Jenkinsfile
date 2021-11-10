pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Tomcat') {
      steps {
        sh 'ls'
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