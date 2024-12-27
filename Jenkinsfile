pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'hello-world-java:latest' // Docker image name
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'javac hello.java'
            }
        }

        stage('Package') {
            steps {
                sh 'jar cf hello.jar hello.class'
            }
        }

        stage('Docker Build') {
            steps {
                sh """
                docker build -t $DOCKER_IMAGE .
                """
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully.'
        }
        failure {
            echo 'Build failed.'
        }
    }
}
