pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Start http server'
                sh 'python3 -m http.server &'
                echo 'Test http server'
                sleep 5
                sh 'curl http://localhost:8000'
            }
        }
    }
}