# Overview : Chat Application

The starting point of this application is a login page. After successfully signing in, it redirects you to a chat window where you can add image and text along with it. Through this project, I have learned about development of application using flutter and implementation of CI/CD activities for this project using Jenkins.

# Implementation of CI/CD process
## Step1: Deploy a Jenkins Server which is accessible via public url

  Create a Virtual Machine in Azure or with any other cloud provider to host your jenkins server. 
  Microsoft has a great article on how to install Jenkins on Azure Linux Virtual Machine.
  You can refer it here :- https://learn.microsoft.com/en-us/azure/developer/jenkins/configure-on-linux-vm
  
  Things that were not covered are listed here:-
  
    a. To create a new file in cloudshell, type following command ->  cd . > cloud-init-jenkins.txt 
    
    b. To write into the file created, type following command  ->  echo '#cloud-config 
                                                                                     package_upgrade: true
                                                                                    runcmd:
                                                                                        - sudo apt install openjdk-11-jre -y
                                                                                        - curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee 
                                                                                           /usr/share/keyrings/jenkins-keyring.asc > /dev/null
                                                                                        -  echo 'deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] 
                                                                                           https://pkg.jenkins.io/debian-stable binary/' | sudo tee 
                                                                                           /etc/apt/sources.list.d/jenkins.list > /dev/null
                                                                                        - sudo apt-get update && sudo apt-get install jenkins -y
                                                                                        - sudo service jenkins restart' > cloud-init-jenkins.txt
      This will not only print the text between single quotes but also push down the output into our cloud-init-jenkins.txt file 
          





