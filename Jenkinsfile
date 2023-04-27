node {
    // Clean workspace before starting the build
    deleteDir()

   stage('Checkout') {
        git branch: 'main', url: 'https://github.com/IsmailAISSAMI/pelico-tech-test'
    }


    stage('Install Dependencies') {
        sh 'npm install'
    }

    stage('Build') {
        sh 'npm run build'
    }

    stage('Test') {
        sh 'npm test'
    }

}
