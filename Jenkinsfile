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
cat Jenkinsfile
cd /home/ec2-user
docker images
docker run maven
docker ps 
docker ps -a'''
      }
    }

  }
  environment {
    stage = 'new'
  }
}