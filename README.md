# Pendulum-workload


## Requirements and Assumptions:

1. This project installs Jenkins on all the given nodes using Ansible and utilizes Jenkinsfile that runs the workloads on all the nodes using a Docker container to execute the given python file on two different Python versions.
2. This approach was selected based on simplicity and some assumptions. 
3. Assumptions: Infra is already provided. (in an ideal scenario, Terrafrom would be used to spin up servers)
4. This project requires at least two servers - ACM & Jenkins master.
5. Make sure ansible is installed on the ACM machine 
6. Make sure the  inventory file has all the host names of the servers for Jenkins installation
7. Make sure there is password less authentication established between the ACM and the Jenkins machine(s).


## Instructions
- Run the ansible playbook - This will install Jenkins and git and other required tools on the Jenkins server.
- Once Jenkins is installed, get the admin password and setup and configure Jenkins to use the Jenkinsfile on the repo. 
- Make sure Git connectivity with Jenkins is established using Personal Access token.
- The Jenkins pipeline would be configured to run as needed based on the need.
- Once the Jenkins pipeline runs successfully, it will run the workloads as a docker container and write to the required txt files - stdout.txt and vestion.txt 
- Ideally, the artifact/result file would be archived based on the need/requirement for the workload runs.


> ansible-playbook install-jenkins.yml -i inventory.txt

Once Jenkins pipeline is created and configured, rest of the steps would be automated.
