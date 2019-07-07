pipeline {
    environment {
        PROJECT_NAME = 'amatthew-website'
        OUTPUT_DIR = '/var/public/amatthewdev/'

        SITE_DIR = 'src'
        S3_BUCKET_NAME = 'georgeblack-web'
    }
    agent none
    stages {
        stage('Jekyll Build') {
            agent {
                docker {
                    image 'jekyll/jekyll'
                }
            }
            steps {
                sh '''
                    cd ${SITE_DIR}
                    mkdir ./_site
                    chown -R jekyll ./_site
                    bundle install
                    bundle exec jekyll build --config=_config.yml,_config_prod.yml
                '''
            }
        }
        stage('Copy Files') {
            agent any
            steps {
                sh '''
                    rm -rf ${OUTPUT_DIR}*
                    cp -r ./${SITE_DIR}/_site/* ${OUTPUT_DIR}
                '''
            }
        }
        stage('Cleanup Workspace') {
            agent any
            steps {
                deleteDir()
            }
        }
    }
}
