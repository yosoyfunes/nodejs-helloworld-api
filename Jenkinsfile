pipeline {
    agent any
    tools {
        nodejs 'nodejs'
    }
    stages {
        stage('Dependencies') {
            steps {
                // Instalar dependencias 
                echo "Ejecutar npm install" 
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                // Ejecutar pruebas unitarias con npm test
                echo 'Ejecutar test'
                sh 'npm test'
            }
        }
        stage('Start Application') {
            steps {
                // Iniciar la aplicación uso de "&" para ejecutar en segundo planoy que no bloquee el pipeline
                echo 'Ejecutar npm start'
                sh 'npm start&'
            }
        }
        stage('Health Check') {
            steps {
                // Verificar que la aplicación responda correctamente
                echo 'ejecutar curl'
                sh 'curl http://localhost:3000'
            }
        }
    }
}
