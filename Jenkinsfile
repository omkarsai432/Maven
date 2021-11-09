pipeline {
  agent {
    docker {
      image 'maven'
      customWorkspace '/home/ec2-user/jenk/'
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
