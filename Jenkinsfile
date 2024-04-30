pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh 'docker build -t appImage .'
                sh 'docker run -d --name app -p 4000:8000 appImage'
                sleep 10
                sh 'curl -k localhost:4000'
            }
        }
    }
}