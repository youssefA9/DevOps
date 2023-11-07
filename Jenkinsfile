 pipeline {

     agent any
		
		stages {
			stage('Clone repo') {
				steps {
                git branch: 'main', credentialsId: 'none', url: 'https://github.com/youssefA9/DevOps.git'
            }
        }
        stage ('Build test Docker') {
            steps {
                script {
				bat 'docker build -t task7 .'
				
                     }
            }
        }
      
        stage ('Run Python Docker') {
            steps {
				script{
                bat 'docker run -v c:\\ProgramData\\Jenkins\\.jenkins\\workspace\\results:/data task7 params.fileName'
                
				}
			}
        }
		
		}
	}
