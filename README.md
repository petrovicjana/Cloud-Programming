# AWS Web Application Infrastructure Deployment with Terraform

## Overview
This Terraform script automates the deployment of a scalable web application infrastructure on Amazon Web Services (AWS). It provisions the following resources:
- Amplify
- API Gateway
- Lambda
- DynamoDB

## Prerequisites
Before running this Terraform script, ensure you have the following prerequisites:

1. **AWS Account**:  
   You must have an AWS account with appropriate permissions to create resources.

2. **Terraform**:  
   Install Terraform on your local machine. You can [download it here](https://www.terraform.io/downloads).

3. **AWS CLI**:  
   Configure the AWS CLI with appropriate credentials on your local machine. You can [install the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) and follow [this guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html) for configuration.

## Running the Script
Follow these steps to deploy the infrastructure:

1. **Initialize Terraform**:  
   Run the following command to initialize Terraform and download necessary providers:
   ```bash
   terraform init
2. **Preview changes**:
   Run the following command to see the execution plan and review the changes Terraform will make:
   ```bash
   terraform plan
3. **Apply changes**:
   Deploy the infrastructure by running:
   ```bash
   terraform apply
4. **First-time GitHub Authorization (Required for first deployment):**:
- Go to AWS Amplify Console  
- Find the application (**exponentation-calculator**)  
- You will see a message: *"You have apps that need to be updated"*  
- Click on the app  
- Click **Start migration** to authorize GitHub integration  
- Once authorized, click on the app again, then on **No deploys** above the domain and then **Run job** to start the first deployment
- After the build completes, your application will be available at the URL provided in Terraform outputs
- For subsequent code updates, deployments will happen automatically when you push to the main branch


## Cleaning up
To avoid incurring unnecessary charges, remember to destroy the resources created by Terraform when they are no longer needed. Run **terraform destroy** to remove all resources created by this script.

## Author
This code was created by Jana Petrovic as a part of University project in Cloud Programming.
