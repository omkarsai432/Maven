pipeline {
  agent {
    docker {
      image 'tomcat'
    }

  }
  stages {
    stage('Compile Stage') {
      steps {
        sh 'tomcat -version'
      }
    }

  }
}