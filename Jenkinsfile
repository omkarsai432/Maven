pipeline {
  agent {
    docker {
      image 'maven'
    }

  }
  stages {
    stage('Example') {
      steps {
        echo 'Hello World'
      }
    }

  }
  post {
    always {
      echo 'I will always say Hello again!'
    }

  }
}