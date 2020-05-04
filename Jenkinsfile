def output
pipeline {
   agent any
   tools {
        go {'gc-1.14'}
   }
   stages {
      stage('Hello') {
         steps {
             script {
                 output = sh label: '', returnStdout: true, script: 'echo "Hello, World"'
             }
         }
      }
      stage('Step Test') {
         steps {
            sh 'go test'
         }
      }
   }
}
