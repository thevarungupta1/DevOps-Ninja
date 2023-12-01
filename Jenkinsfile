
pipeline {
    agent any

    tools {
        jdk 'jdk17'
        maven 'maven3'
    }

    stages {
        stage('Git Checkout') {
            steps {
                git '<github url>'
            }
        }

        stage('Code Compile') {
            steps {
                sh "mvn clean compile"
            }
        }

        stage('Unit Test') {
            steps {
                sh "mvn test"
            }
        }

        stage('Code Build') {
            steps {
                sh "mvn clean package"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: '<docker_cred_name>') {
                        sh "docker build -t <image_name>:latest ."

                    }
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: '<docker_cred_name>') {
                        sh "docker tag <image_name> <docker_hub>/<image_name>:latest"
                        sh "docker push <docker_hub>/<image_name>:latest"

                    }
                }
            }
        }

        stage('Deploy Application') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred') {
                        sh "docker run -d -p 8081:8080 <docker_hub>/<image_name>:latest"

                    }
                }
            }
        }
    }


}