pipeline {
    agent {
        label 'aws_agent'
    }
    stages {
        stage('Project dependencies') {
            steps {
                sh 'yarn'
            }
        }

        stage('Build'){
            steps {
                sh 'yarn build'
            }
        }

        stage ('Deploy app') {
            steps {
                sh """
                chmod +x deploy.sh
                ./deploy.sh
                """
            }
        }
            
        stage('Setup Nginx') {
            steps {
                sh """
                chmod +x nginxsetup.sh
                ./nginxsetup.sh
                """
            }
        }
    }
}