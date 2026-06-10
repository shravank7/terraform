pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"
    }

    stages {

        stage('Checkout from SCM') {
            steps {
                cleanWs()
                git branch: 'main',
                    url: 'https://github.com/majidul1716/terraform.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh '''
                    terraform --version
                    terraform init
                '''
            }
        }

        stage('Terraform Validate') {
            steps {
                sh '''
                    terraform validate
                '''
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                    terraform plan -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Approve Terraform Apply?', ok: 'Apply'
                sh '''
                    terraform apply -auto-approve tfplan
                '''
            }
        }
    }

    post {
        success {
            echo 'Terraform pipeline executed successfully.'
        }

        failure {
            echo 'Terraform pipeline failed.'
        }
    }
}
