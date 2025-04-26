# 🚀 DevOps Project: AWS Infrastructure with Terraform, Ansible, Docker, Kubernetes (EKS) & GitHub Actions

## 📄 Project Overview

This project demonstrates a complete **DevOps automation pipeline** that builds, deploys, and manages a containerized application on AWS using Infrastructure as Code (IaC) and CI/CD best practices.

The project automates:

- Infrastructure provisioning with **Terraform**
- Server configuration with **Ansible**
- Application containerization with **Docker**
- Image management in **AWS ECR**
- Deployment on **Kubernetes (AWS EKS)**
- Continuous Integration and Deployment via **GitHub Actions**

---

## 📦 Project Architecture

```text
GitHub → GitHub Actions → Terraform (AWS EC2 + EKS) → Ansible → Docker → AWS ECR → Kubernetes (EKS)
```
![c5f5862c-1a4a-4d80-b0ff-0174328ed950](https://github.com/user-attachments/assets/77107172-1a67-4bc3-86b3-536586e5fa72)

# DevOps Infrastructure Automation 🚀

This project automates infrastructure provisioning, configuration management, and CI/CD pipelines using modern DevOps tools.

## 🛠 Technologies Used

| Category              | Technology                          | Purpose                                                                 |
|-----------------------|-------------------------------------|-------------------------------------------------------------------------|
| **Infrastructure**    | Terraform                           | Infrastructure as Code (IaC) provisioning                               |
| **Configuration**     | Ansible                            | Server configuration and software installation                          |
| **Containerization**  | Docker                             | Application containerization                                            |
| **Container Registry**| AWS ECR                            | Secure Docker image repository                                          |
| **Compute**           | AWS EC2                            | Virtual servers for running workloads                                   |
| **Orchestration**     | Kubernetes (AWS EKS)               | Managed Kubernetes cluster for container orchestration                  |
| **CI/CD**             | GitHub Actions                     | Automated build, test, and deployment pipelines                         |

## 📋 Prerequisites

Before using this project, ensure you have:

- AWS account with appropriate IAM permissions
- Terraform v1.0+ installed
- Ansible v2.10+
- Docker and kubectl configured
- GitHub repository with Actions enabled

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone git@github.com:yourusername/your-repo.git
   cd your-repo
```
.
├── ansible/         # Playbooks to configure EC2
├── docker/          # Dockerfile to build the app image
├── k8s/             # Kubernetes YAML files (Deployment, Service, Ingress)
├── terraform/       # Terraform scripts for AWS infrastructure
├── .github/workflows/ # GitHub Actions CI/CD workflows
├── README.md
└── .gitignore

## 🚀 Deployment Guide

### 1. **Infrastructure Provisioning**  
Provision AWS resources using Terraform:

```bash
cd terraform/
terraform init        # Initialize Terraform
terraform plan       # Review changes (optional)
terraform apply      # Deploy infrastructure
```
## 2. 🛠 Server Configuration with Ansible

### 📌 Prerequisites
- Ansible installed on your control node (`pip install ansible`)
- SSH access to target EC2 instances (key-based authentication)
- Python 3.x on all managed nodes

### 🔧 Basic Execution
```bash
cd ansible/
ansible-playbook -i inventory playbook.yml \
  --private-key ~/.ssh/your-key.pem \
  --user ec2-user  # Default AWS EC2 user

```
## 3. 🐳 Application Containerization

### Build and Push Docker Image

```bash
cd docker/
docker build -t yourdockerhub/myapp:latest .
docker push yourdockerhub/myapp:latest
```
## 4. ☸️ Kubernetes Deployment

### Apply Kubernetes Manifests

```bash
cd k8s/
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Optional (if using Ingress)
kubectl apply -f ingress.yaml
```

## 5. CI/CD Automation (GitHub Actions)

The pipeline will automatically:
- ✅ Build Docker image
- ✅ Push to AWS ECR
- ✅ Deploy to EKS cluster

### Example Workflow
```yaml
name: EKS Deployment
on: [push]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - run: docker build -t $ECR_REGISTRY/app:$GITHUB_SHA .
      - run: docker push $ECR_REGISTRY/app:$GITHUB_SHA
      - run: kubectl apply -f k8s/
```


---

✅ **Important:**
- Replace `yourdockerhub/myapp:latest` with your real DockerHub or ECR repo name.
- Replace `your-linkedin-url` and `your-github-url` with your real links.
- If you upload the diagram photo to GitHub, replace `"your_diagram_image_link_here"` with its real path.

---

Would you also like me to prepare a **small badge section** (like "Terraform | Ansible | AWS | Kubernetes | GitHub Actions") at the top for you? 🎖️
It makes your README look even more professional! 🚀  
Just say **yes** if you want! 🌟


