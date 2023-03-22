pipeline {
    agent any 
    stages {
        stage('cloning') { 
            steps {
                git credentialsId: '3dc4abb6-6763-4af5-8f0d-eade31c9718f', url: 'https://github.com/ShivamAsthana/RajSirwebsite.git' 
            }
        }
        stage('deploying') { 
            steps {
                sh 'ls'
                sh 'pwd'
                sh 'cp $(pwd) . /home'
                sh 'docker build -t testing .'
                sh 'docker run -d -p 81:80 --name web testing'
                
            }
        }        
    }
}