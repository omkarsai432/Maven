pipeline {
  agent {
    docker {
      image 'java'
    }

  }
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'java -version'
          }
        }

        stage('Test') {
          steps {
            sh 'echo "test"'
          }
        }

      }
    }

  }
  environment {
    stage = 'new'
  }
}