pipeline {
  agent {
    docker {
      image 'maven'
      customWorkspace '/home/ec2-user/jenk/'
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