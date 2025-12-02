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
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKERHUB_USER', passwordVariable: 'DOCKERHUB_PASS')]) {
                    sh "dockerhub-credentials login -u ${env.DOCKERHUB_USER} -p ${env.DOCKERHUB_PASS}"
                    sh 'dockerhub-credentials push edsonmtz/jenkins-web:latest'
                }
            }
        }
    }
}