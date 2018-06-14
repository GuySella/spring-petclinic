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
          sh 'mvn clean package -DskipTests'
        
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
