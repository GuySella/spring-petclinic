pipeline {
    agent any



	stages ('Trigger from SCM') {
	properties([pipelineTriggers([[$class: 'GitHubPushTrigger'], pollSCM('* * * * *')])])
	}
	
	stages {
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
