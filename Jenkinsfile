pipeline {
    agent any
    stages {
        stage('DSL method') {
            steps {
                echo "Current stage: ${env.STAGE_NAME}"
            }
        }
        stage('script method') {
            steps {
                script {
                    sh "echo Current stage: ${env.STAGE_NAME}"
                }
            }
        }
        stage('parallel test') {
            parallel {
                stage('integration test') {
                    steps {
                        sh "echo Current stage: ${env.STAGE_NAME}"
                    }
                }
                stage('performance test') {
                    steps {
                        sh "echo Current stage: ${env.STAGE_NAME}"
                    }
                }
                stage('security scan') {
                    steps {
                        sh "echo Current stage: ${env.STAGE_NAME}"
                    }
                }
                
            }
        }
        stage('Prepare for Deployment') {
            steps {
                echo 'Preparing for deployment...'
            }
        }
        stage('Manual Approval for Deployment') {
            steps {
                script {
                    def userInput = input(id: 'proceed', message: 'Proceed with deployment?', ok: 'Deploy Now', submitter: 'admin')
                    // You can add logic based on userInput if needed
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application after approval...'
            }
        }
    }
}
