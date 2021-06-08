pipeline {

    agent {

        label "master"

    }

    tools {

        maven "Maven"

    }

    environment {

        NEXUS_VERSION = "nexus3"

        NEXUS_PROTOCOL = "http"

        NEXUS_URL = "http://18.222.198.245:8081/"

        NEXUS_REPOSITORY = "maven-nexus-repo"

        NEXUS_CREDENTIAL_ID = "NEXUS_CRED"

    }
    stages {
        stage('Build Maven') {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'GIT_REPO', url: 'https://github.com/devopshint/jenkins-maven.git']]])

                sh "mvn -Dmaven.test.failure.ignore=true clean package"
                
            }
        }
    }
}