pipeline {
    options {
        buildDiscarder(logRotator(numToKeepStr:'5'))
    }
    agent {
        label 'docker'
    }
    stages {
        stage("Build image") {
            steps {
                sh "docker build -t ondmagi/custom-docker-agent:latest ."
            }
        }
        stage("Docker push") {
            steps {
                sh "docker push ondmagi/custom-docker-agent:latest"
            }
        }
    }
}