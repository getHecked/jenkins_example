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
      stage('Step two') {
         steps {
            sh 'CGO_ENABLED=0 go build -o example1'
         }
      }
      stage('Publish artifact') {
       steps {
         archiveArtifacts 'example1'
       }
     }
   }
}
