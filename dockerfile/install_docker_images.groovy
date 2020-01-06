pipeline {
    
    agent any

    stages {
             stage('Run Docker Images'){
                
                parallel{
             
                    stage('Python') {
                        agent { docker { image 'python:3.5.1' } }
                        steps {
                            sh 'python --version'
                        }
                    }
                
                    stage('Maven') {
                        agent { docker { image 'maven:3.3.3' } }
                        steps {
                            sh 'mvn --version'
                        }
                    }
                
                    stage('Node') {
                        agent { docker { image 'node:6.3' } }
                        steps {
                            sh 'npm --version'
                        }
                    }

                    stage('PHP') {
                        agent { docker { image 'php' } }
                        steps {
                            sh 'php --version'
                        }
                    }
                }
            }
            stage('Deploy') {
                    steps {
                        sh 'echo Deploy Realizado'
                    }
            }    
    } 
}