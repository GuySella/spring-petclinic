pipeline {
    agent any

	stages {
        
	stage ('Trigger from SCM') {
        properties([pipelineTriggers([[$class: 'GitHubPushTrigger'], pollSCM('* * * * *')])])
        }

	stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
