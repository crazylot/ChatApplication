# Overview : Chat Application

The starting point of this application is a login page. After successfully signing in, it redirects you to a chat window where you can add image and text along with it. Through this project, I have learned about development of application using flutter and implementation of CI/CD activities for this project using Jenkins.

# GitHub Releases
  They are deliverables that you can make it availble for your users/testers to download and use them. Github Releases can be seen at the right side of the list of files.

# GitHub Action
  GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform that allows you to automate your build, test, and deployment pipeline. You can create 
  workflows that build and test every pull request to your repository, or deploy merged pull requests to production. GitHub Action creates a new virtual machine and install 
  all the software you have specified in your main.yml file everytime you create a new push/pull event.

# Implementation of CI/CD Process using GitHub Action
## Step 1: Create a main.yml file
   Create a directory by the name of ".github" and then create a subdirectory of the name "workflows" in it. Create a file in this directory called as main.yml file.
## Step 2: Define Steps and Jobs for that you want to automate in the main.yml file
## Step 3: Create a Personal Access Token
   **A personal access token is needed to authenticate yourself to github action.** Personal Access Token are intented to access github resources on your behalf.
   Go to **Settings >> Developer Settings >> Personal access token**. Generate a token(classic) by providing basic repo permission.
## Step 4: Add the Token Generated to secrets of your github repo
   Go to the settings of your github repository. Under Security, you will find option for "Secrets and variables". Go to Actions and create a new repository token by 
   the name of *"TOKEN"*. This name is used because we have configured the same name for our token in main.yml file. Paste your Personal Token in the secret input field.
   Click on "Add Secret"

Now everytime I create a push event for my master branch, the workflow is triggered which test, build and finally release a new version of the app to the github releases.


Github Releases consists of APK file for 3 different targetted ABI (Appication Binary Inteface).
You can download the APK file from here which can be installed on your android device.
   
   
   

  
