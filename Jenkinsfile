pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                
                git 'https://github.com/amara-nour/my-docker-api.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                
                script {
                    dockerImage = docker.build('nour062/testapp:v1')
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy Container') {
            steps {
               
                sh 'docker run -d -p 3000:3000 nour062/testapp:v1'
            }
        }
    }
}
