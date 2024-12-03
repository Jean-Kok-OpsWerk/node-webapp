pipeline {
    agent {  
        label 'linux-node'  
    }  
    stages {
        stage('Checkout') {  
            steps {  
                git credentialsId: '39e965c7-b55c-40de-b9a4-200652b225c0', url: 'https://github.com/Jean-Kok-opsWerk/node-webapp.git', branch: 'main'
            }  
        }  
        stage('Build Docker Image') {
            steps {  
                script {  
                    docker.build('node-webapp:latest')
                }
            }  
        }  
        stage('Run Docker Container') {
            steps {  
                script {  
                    docker.image('node-webapp:latest').run('-d -p 3000:3000')
                }  
            }  
        }
    }  
}
