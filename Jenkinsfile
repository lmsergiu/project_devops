pipeline {
    agent any

    stages {
        stage('Clean Up'){
            steps{
                sh '''
                    if docker container ls -a | grep app ;
                    then 
                        docker container stop app
                        docker container rm app
                        docker image rm appimg
                    fi
                '''
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
