pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          agent {
            docker {
              image 'java'
            }

          }
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