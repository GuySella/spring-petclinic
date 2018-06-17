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

    post {
        always {
            junit 'build/reports/**/*.xml'
        }
        failure {  
             mail bcc: '', body: "<b>Example</b><br>\n <br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", cc: '', charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name -> ${env.JOB_NAME}", to: "guys@trainologic.com";  
        }
    }
}
