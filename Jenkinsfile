pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'echo "Hello World"'
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