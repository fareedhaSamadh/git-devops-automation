pipeline{
	agent any
	tools{
		maven 'maven'
	}
	stages{
		stage('Build Maven'){
			steps{
			    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/fareedhaSamadh/git-devops-automation']])
			    bat 'mvn clean install'
			}
	      }
	    stage('Build Docker image'){
			steps{
			    bat 'docker build -t fareedha199/devopsintegration .'
			}
	      }
	    stage('Push Docker image'){
			steps{
			   withCredentials([string(credentialsId: 'dockerhub_pwd', variable: 'dockerhub_pwd')]) {
               bat 'docker login -u fareedha199 -p %dockerhub_pwd%'

               bat 'docker push fareedha199/devopsintegration:latest' }
                }
			}
}
}



