pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh 'docker build -t appimg .'
                sh 'docker run -d --name app -p 4000:8000 appimg'
                sleep 10
                sh 'curl -k localhost:4000'
            }
        }
    }
}