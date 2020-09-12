pipeline {
    agent any

    environment {
        PASS = credentials('DOCKER_HUB_PASS')

        DOCKER_IMAGE = 'node-hello'

        ECR_REPO = '411163866686.dkr.ecr.ap-southeast-1.amazonaws.com/node-hello'
        APP_VERSION = "${BUILD_ID}"
        APP_ENV = "${BRANCH_NAME}"

        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'ap-southeast-1'
        AWS_DEFAULT_OUTPUT    = 'json'

        RELEASE_TASK    = 'nodejs-release-task-definition'
        RELEASE_CLUSTER = 'nodejs-release-cluster'
        RELEASE_SERVICE = 'nodejs-release-srv'
    }

    stages {
        stage('Build') {
            steps {
                sh './jenkins/build.sh'
            }
        }

        stage('[NODEJS] Push to ECR') {
            steps {
                echo '****** Push docker image to ECR ******'
                sh './jenkins/push.sh'
            }
        }

        stage('[NODEJS] Deploy to master') {
            when {
                branch 'master'
            }

            steps {
                echo "****** Deploy to ${BRANCH_NAME} branch ******"
                sh './jenkins/deploy_master.sh'
            }
        }
    }
}
