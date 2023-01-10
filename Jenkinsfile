pipeline {
    agent any

    stages {
        stage('Test Build') {
            steps {
                script {
                    testImg = docker.build(
                                        'ramdom-build',
                                        (
                                            '-f Dockerfile ' +
                                            '.'
                                        )
                                    )
                }
            }
        }
    }
}