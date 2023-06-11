pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Clean up any previous build artifacts
                sh 'docker-compose down'
                
                // Build the Docker image
                sh 'docker-compose build'
            }
        }
        
        stage('Deploy') {
            steps {
                // Start the Docker containers
                sh 'docker-compose up -d'
            }
        }
        
        stage('Cleanup') {
            steps {
                // Stop and remove the Docker containers
                sh 'docker-compose down'
            }
        }
    }
}
