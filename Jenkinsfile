pipeline{
    agent any

    stages {
        stage('Docker Build') {
            steps {
                sh 'docker build -t edsonmtz/jenkins-web:latest .'
            }
        }
        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKERUSER', passwordVariable: 'DOCKERPASSWORD')]) {
                    sh "dockerhub-credentials login -u ${env.DOCKERUSER} -p ${env.DOCKERPASSWORD}"
                    sh 'dockerhub-credentials push edsonmtz/jenkins-web:latest'
                }
            }
        }
    }
}