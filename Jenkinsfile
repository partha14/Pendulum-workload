pipeline {
    agent { dockerfile true }
    stages {
        stage('Workloads') {
            steps {
		sh ' python3.9 ./pendulum_workload.py >> stdout.txt '
		sh ' python3.9 --version >> vestion.txt'
		sh ' python2.7 ./pendulum_workload.py >> stdout.txt '
		sh ' python2.7 --version >> vestion.txt '
                 sh ' cat stdout.txt '
                 sh ' cat vestion.txt '
            }
        }
    }
}
