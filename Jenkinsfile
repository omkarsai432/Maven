pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Tomcat') {
      steps {
        sh 'docker run -d -p 80:8080 '
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