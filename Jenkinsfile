pipeline {
    environment {
        PROJECT_NAME = 'amatthew-website'
        OUTPUT_DIR = '/var/public/amatthewdev/'
    }
    agent none
    stages {
        stage('Copy Files') {
            agent any
            steps {
                sh '''
                    rm -rf ${OUTPUT_DIR}*
                    cp -r ./* ${OUTPUT_DIR}
                '''
            }
        }
    }
}
