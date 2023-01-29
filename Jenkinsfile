pipeline {
    agent any
    stages {
        stage('Project dependencies') {
            steps {
                sh 'yarn'
            }
        }

        stage ('Build') {
            steps {
                sh 'yarn build'
            }
        }

        stage ('Deploy app')
            steps {
                sh """
                chmod +x deploy.sh
                ./deploy.sh
                """
            }
        stage('Setup Nginx') {
            steps {
                sh """
                
                """
            }
        }
    }
}