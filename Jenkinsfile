pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t node-app:latest .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f node-container || true
                docker run -d -p 80:8080 --name node-container node-app
                '''
            }
        }
    }

    post {
        success {
            echo 'Node app deployed successfully'
        }
    }
}
