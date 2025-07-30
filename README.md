🛠️ CI/CD Project with Jenkins, Puppet, Ansible & Docker
This project demonstrates the implementation of a complete CI/CD pipeline using Jenkins and DevOps tools like Puppet, Ansible, and Docker. It automates the process of configuration management, software provisioning, application deployment, and containerization of a PHP web application.

🔧 Job 1: Install and Configure Puppet Agent on Slave Node
🔹 Objective:
The purpose of this job is to automate the installation and configuration of the Puppet agent on a remote slave (client) node from the Jenkins master. This ensures that the client node is manageable through configuration management using Puppet.

🔹 Description:
Jenkins runs a shell script that:

Installs the Puppet agent on the slave machine.

Configures the Puppet agent to connect to the Puppet master.

Enables and starts the Puppet service.

Ensures proper hostname and SSL setup so the agent can communicate with the master.

🔹 Outcome:
Once this job runs, the slave node is registered with the Puppet master and ready to receive configuration manifests.

📦 Job 2: Use Ansible to Install Docker on the Target Server
🔹 Objective:
Automate Docker installation on a testing or production node using Ansible, triggered through Jenkins.

🔹 Description:
Jenkins uses an ansible-playbook that:

Installs required dependencies.

Adds the official Docker repository.

Installs Docker Engine and CLI.

Ensures Docker service is started and enabled.

The playbook is executed over SSH using an inventory file or ad-hoc host information.

🔹 Outcome:
Docker is installed, configured, and running on the remote server, ready to deploy containerized applications.

🌐 Job 3: Pull PHP Web App and Dockerfile, Build and Deploy Container
🔹 Objective:
Build and deploy a PHP web application using Docker by pulling the source code from a Git repository.

🔹 Description:
Jenkins pulls the latest PHP website code and Dockerfile from GitHub.

It builds a Docker image using the Dockerfile which:

Uses an Apache-based base image.

Copies the website content into /var/www/html.

Starts Apache server on port 8080.

Jenkins then tags the Docker image and:

Logs in to Docker Hub using stored credentials.

Pushes the built image to Docker Hub (sushant960kr/projcert:6).

Finally, Jenkins deploys the Docker container on the node using:
-> docker run -d -p 8080:8080 --name projcert_container sushant960kr/projcert:6

🔹 Outcome:
The PHP web app<img width="1914" height="1199" alt="Screenshot 2025-07-29 125653" src="https://github.com/user-attachments/assets/21f0f9bc-f3d6-4503-bbb8-89061dd1ca77" />
lication becomes accessible via the public IP or domain on port 8080.
<img width="940" height="488" alt="image" src="https://github.com/user-attachments/asset<img width="1919" height="1151" alt="Screenshot 2025-07-30 140827" src="https://github.com/user-attachments/assets/02e1639b-3047-48c9-a7d5-89b132cfd2e5" />
s/509860ff-9dcb-4519-914c-c7e225d95088" />

<img width="1919" height="1199" alt="Screenshot 2025-07-30 140625" src="https://github.com/user-attachments/assets/d05df9c0-873b-424a-9dcc-aff4a13f0aa3" />
