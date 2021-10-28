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
          agent {
            docker {
              image 'maven'
            }

          }
          steps {
            sh 'mvn --version'
          }
        }

      }
    }

    stage('Tomcat') {
      agent {
        docker {
          image 'tomcat'
        }

      }
      steps {
        sh '''pwd
ls
cd /home
ls
'''
      }
    }

  }
  environment {
    stage = 'new'
  }
}