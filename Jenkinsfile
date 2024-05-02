pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh 'docker build -t appimg .'
                sh 'docker run -d --name app appimg'
                sleep 10
                sh 'curl -k localhost:8000'
            }
        }
    }
}
