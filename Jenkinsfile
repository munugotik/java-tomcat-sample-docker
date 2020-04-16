pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
				echo 'Building Application'
                sh "mvn clean"
				echo 'After - Building Application'
            }
            post { 
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
				echo 'Create Tomcat Docker Image'
                sh "pwd"
                sh "ls -a"
                sh "docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }

    }
}