pipeline {
    options {
        buildDiscarder(logRotator(numToKeepStr:'5'))
    }
    agent {
        label 'docker'
    }
    environment {
        DOCKER_IMAGE_NAME = "ondmagi/custom-docker-agent"
    }
    stages {
        stage("Build image") {
            steps {
                sh "docker build -t ${DOCKER_IMAGE_NAME}:${GIT_BRANCH} ."
            }
        }
    }
    post {
        always {
            sh "docker image rm ${DOCKER_IMAGE_NAME}"
        }
    }
}