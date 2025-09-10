# Remote-Backend - S3 and DynamoDB
- This directory stores .tf files for creating/provisioning Remote-backend a solution for State conflict


# Problems
- 1. We cannot store terraform.tfstate in a GitHub Repository cause it will be insecure and not the best security practice
- 2. Suppose There are many Guys who are editing and count number in main.tf and terraform.tfstate . 
     So, There would be a conflict (State Conflict) - Terraform:- Which file to apply? Which state is right?

# Solutions
- We create a common terraform.tfstate file and Store it in Remote Backend.
- Use S3 bucket as a Remote Backend, and integrate it with DynamoDB LockID (Lock and Release Mechanism) 
  so that only one person at a time will have the access to the terraform.tfstate file.
- This will solve the problems.