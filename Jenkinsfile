pipeline {
    agent any
    tools {
        nodejs 'nodejs'
    }
    stages {
        stage('Build') {
            steps {
                echo "Clona el repositorio"
                sh 'git clone https://github.com/yosoyfunes/nodejs-helloworld-api.git'
                echo "mover a la carpeta"
                sh 'cd nodejs-helloworld-api'
                echo "Ejecutar npm install" 
                sh 'npm install'
                echo 'Ejecutar test'
                sh 'npm test'
                echo 'Ejecutar npm start'
                sh 'npm start'
                echo 'ejecutar curl'
                sh 'curl http://localhost:3000'
            }
        }

        // stage('Test') {
        //     steps {
        //         echo "Ejecutar npm test push" 
        //         sh 'npm test'
        //     }
        // }
    }
}
