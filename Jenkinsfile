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
            sh 'go build'
         }
      }
      stage('Publish artifact') {
       steps {
         archiveArtifacts 'example1_git'
       }
     }
   }
}
