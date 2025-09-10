# 🧐 Terraform Repository 🚀

Welcome to my Terraform practice playground — where I nurture my hands-on skills with Infrastructure as Code (IaC).

This repository showcases my growing mastery of Terraform through organised, functional examples.

---

##  Directory Structure

Each folder contains Terraform configuration files, named to reflect their focus—making navigation intuitive:

- **`for-each/`** ,**`Count/`** – Includes modules for setting up VPCs and security groups and uses Dynamic Blocks (Meta Arguments)
- **`Instance/`** – Hosts configuration for Ec2 Instance
- **`Remote-backend/`** – Manages terraform.tfstate file and state using S3 bucket and DynamoDB LockID

---

##  Purpose & Goals

I curiously built this repository to:

- **Strengthen** my real-world Terraform capabilities  
- **Document** reusable patterns that mirror how industry projects are structured  
- **Share** my learning journey with others exploring Terraform’s power  

---

##  Tools & Technologies

- **Terraform**: Core IaC tool for provisioning and managing infrastructure  
- **Cloud Providers**: AWS
- **Infrastucre**: Kubernetes, AWS cloud 
- **State Management**: Local and optionally remote backends (e.g., S3 + DynamoDB for AWS)
- **Additional** : CI/CD with Devops tools using Terraform
