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
      steps {
        sh '''pwd
ls
cd /home/ec2-user
'''
      }
    }

  }
  environment {
    stage = 'new'
  }
}