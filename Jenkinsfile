pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
				echo 'Building Application'
                bat "mvn clean package"
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
                bat "pwd"
                bat "ls -a"
                bat "docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }

    }
}