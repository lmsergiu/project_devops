pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh 'docker build -t appimg .'
                sh 'docker run -d --name app -p 8001:8000 appimg'
                sleep 10
                sh 'curl -k localhost:8001'
            }
        }
    }
}
