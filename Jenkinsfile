pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        script {
          docker.build('fastapi-app')
        }
      }
    }

    stage('Deploy') {
      steps {
        script {
          sh 'docker-compose up -d'
        }
      }
    }
  }
}

