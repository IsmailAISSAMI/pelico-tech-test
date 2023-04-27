pipeline {
  agent any

  tools {
    nodejs 'NodeJs'
  }

  environment {
    PATH = "${tool 'NodeJs'}/bin:${env.PATH}"
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/IsmailAISSAMI/pelico-tech-test.git'
      }
    }

    stage('Install Dependencies and Build') {
      steps {
        sh 'npm ci'
        sh 'npm run build'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          def project = 'pelico-tech-test'
          def version = 'latest'
          def imageName = "${project}:${version}"
          sh "docker build -t ${imageName} ."
        }
      }
    }

    stage('Deploy to Minikube') {
      steps {
        sh 'kubectl config use-context minikube'
        sh 'kubectl apply -f k8s-deployment.yml'
        sh 'kubectl apply -f k8s-service.yml'
      }
    }
  }
}
