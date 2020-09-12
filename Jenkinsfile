pipeline {
    agent any

    environment {
        PASS = credentials('DOCKER_HUB_PASS')

        DOCKER_IMAGE = 'node-hello'
    }

    stages {
        stage('Build') {
            steps {
                sh './jenkins/build.sh'
            }
        }
    }
}
