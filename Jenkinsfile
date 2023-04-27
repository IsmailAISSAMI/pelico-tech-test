node {
    // Clean workspace before starting the build
    deleteDir()

    stage('Checkout') {
        // Checkout the Git repository
        git 'https://github.com/IsmailAISSAMI/pelico-tech-test'
    }

    stage('Install Dependencies') {
        // Install npm dependencies
        sh 'npm install'
    }

    stage('Build') {
        // Build the React application
        sh 'npm run build'
    }

    stage('Test') {
        // Run tests using the npm test command
        sh 'npm test'
    }

    // Optional: you can add more stages for deployment, notifications, etc.
}
