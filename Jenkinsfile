pipeline {
    
    agent { node { label 'slave' } }
  
    tools {
    maven "apache-maven-3.5.3"
    }

    stages {
        
		stage("build") {
            steps {
    
                sh 'echo "M2_HOME: ${M2_HOME}"'
                sh 'echo "JAVA_HOME: ${JAVA_HOME}"'
                sh 'mvn clean package'
            }
                post {
                    always {
                        junit 'target/surefire-reports/*.xml'
                    }
                }
        }
        stage('Building docker image') {
            steps {
                sh 'docker build -t petclinic_jar/spring-petclinic:latest .'
            }
        }
        
        stage('Deploy to dockerhub') {
            docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                sh 'docker push petclinic_jar/spring-petclinic:latest'
            }
        }
    }

    post {
        failure {  
             mail bcc: '', body: "<b>Example</b><br>\n <br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name -> ${env.JOB_NAME}", to: "guys@trainologic.com";  
        }
    }
}
