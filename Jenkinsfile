pipeline{
    agent any
    stages{
        stage('clone'){
            steps{
                sh 'echo "WORKING"'
                
            }
        }

        stage('check version docker') {
            steps {
                sh 'docker -v'
            }
            
        }

        stage ('build docker-compose') {
            steps {
                sh 'git branch'
                sh 'ls ${pwd}'
             
            
            }
        }
        stage ('webhook work') {
            steps {
                sh 'git branch'
             
            
            }
        }
    }
}