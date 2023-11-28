pipeline {

    agent any

    tools {

        maven "MAVEN"
    }

    
    stages {
        stage('Build Maven') {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'GIT_REPO', url: 'https://github.com/nima3608/jenkins-maven.git']]])

                sh "mvn -Dmaven.test.failure.ignore=true clean package"
                
            }
        }
    }
    
}
