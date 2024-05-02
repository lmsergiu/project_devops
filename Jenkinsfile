pipeline {
    agent any

    stages {
        stage('Clean Up') {
            steps {
                sh 'docker container stop app >/dev/null 2>&1'
                sh 'docker container rm app >/dev/null 2>&1'
                sh 'docker image rm appimg >/dev/null 2>&1'
            }
        }
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
