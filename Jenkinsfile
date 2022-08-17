node {
    def app
    
    stage('Check out from git') {
        checkout scm
    }

    stage('Build docker image') {
        dir("docker") {
            app = docker.build("gp-final")
        }
    }

    stage('Create infrastructure') {
        dir("terraform-cluster") {
            sh "terraform init"
            sh "terraform apply --auto-approve"
        }
    }

    stage('Deploy docker image') {
        sh 'kubectl apply -f deployment.yml'
    }
}