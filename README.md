# Setup Jenkin server on AWS EC2 and build CI CD pipeline using Terraform

Step 1: Clone the repository
update terraform script which will create ec2 instance running jenkins

- Image (AMI): Ubuntu, 22.04 LTS
- instance type: t2.xLarge
- Storage (volumes): 30 GiB


Step 2: connect with jenkin server
http://<Public IPv4 address>:8080

get the initialPassword
> sudo cat /var/lib/jenkins/secrets/initialAdminPassword

Step 3: Create first admin user
   
Step 4: Install plugins and configure tools

- Eclipse Temurin installer
- Docker
- Docker Pipeline
- docker-build-step

Step 5: Configure tools
- JDK installations - Add JDK
- Maven installations
- Docker installations

Step 6: Create global crediantial for sonar

Step 7: Create a job - pipeline

Step 8: Test the application