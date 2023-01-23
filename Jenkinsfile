def BuildImage = null

pipeline {
    agent {
        label 'linux'
    }

    stages {
        // need to set environment variables (the ones missing from the docker image)
        stage('pre-stage') {
            // Setup the build environment variables here
            steps {
                script {
                    sh 'pwd'
                    sh 'echo hey'
                }
            }

        } // stage: build environment
        
        stage('run docker') {
            steps {
                echo 'Starting docker'
                script {

                    BuildImage = docker.build(
                        "pd/dockerloglimit:${env.BUILD_UID}",
                        (
                            "-f Dockerfile " +
                            "."
                        )
                    )

                }
            }
        } // stage: build code

    }


}