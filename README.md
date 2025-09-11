# 🧐 Terraform Repository 🚀
This branch is configured for dev environment

Welcome to my Terraform practice playground — where I nurture my hands-on skills with **Infrastructure as Code (IaC)**.  

This repository showcases my growing mastery of Terraform through organized, functional examples.  

---

## 📂 Directory Structure

Each folder contains Terraform configuration files, named to reflect their focus — making navigation intuitive:

- **`for-each/`, `count/`** – Demonstrates meta-arguments like `for_each`, `count`, and the use of dynamic blocks (e.g., VPCs and Security Groups)  
- **`instance/`** – Configuration for EC2 instances  
- **`remote-backend/`** – Manages `terraform.tfstate` with remote state storage using **S3 bucket** and **DynamoDB (LockID)**  

---

## 🎯 Purpose & Goals

I built this repository to:  
- Strengthen my **real-world Terraform capabilities**  
- Document **reusable patterns** that reflect industry best practices  
- Share my **learning journey** with others exploring Terraform’s power  

---

## ⚙️ Tools & Technologies

- **Terraform** → Core IaC tool for provisioning and managing infrastructure  
- **Cloud Provider** → AWS  
- **Infrastructure** → Kubernetes, AWS Cloud  
- **State Management** → Local and Remote (S3 + DynamoDB for AWS)  
- **Additional** → CI/CD pipelines with DevOps tools, integrated using Terraform  

---

## 🚀 How to Get Started

1. Clone the repository:  
   ```bash
   git clone https://github.com/AdityaGaikwad6430/Terraform.git
   cd Terraform
