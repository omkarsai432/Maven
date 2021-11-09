pipeline {
  agent none
  stages {
    stage('Example Deploy') {
      agent {
        docker {
          image 'maven'
        }

      }
      when {
        branch 'main'
      }
      steps {
        echo 'Master'
        sh 'mvn -version'
      }
    }

    stage('Example') {
      input {
        message 'Should we continue?'
        id 'Yes, we should.'
        submitter 'alice,bob'
        parameters {
          string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        }
      }
      steps {
        echo "Hello, ${PERSON}, nice to meet you."
      }
    }

    stage('Parameters') {
      agent {
        docker {
          image 'java'
        }

      }
      steps {
        sh 'java -version'
        echo "Hello ${params.PERSON}"
        echo "Biography: ${params.BIOGRAPHY}"
        echo "Toggle: ${params.TOGGLE}"
        echo "Choice: ${params.CHOICE}"
        echo "Password: ${params.PASSWORD}"
      }
    }

  }
  parameters {
    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
    text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
    booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
    choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
    password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
  }
}