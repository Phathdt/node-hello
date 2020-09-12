pipeline {
    agent any

    environment {
        PASS = credentials('DOCKER_HUB_PASS')
    }

    stages {
        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/build.sh
                '''
            }
        }
    }
}
