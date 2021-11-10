pipeline {
  agent {
    docker {
      image 'maven'
    }

  }
  stages {
    stage('Tomcat') {
      steps {
        sh '''docker build -t tomcat .
docker run -d -p 80:8080 tomcat'''
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