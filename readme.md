# DevOps Experts — DevOps Engineer Course Project

## Introduction
This project is part of a DevOps course I’m taking at DevOps Experts, where I’ve applied various DevOps tools and practices to automate and streamline software development. 
<!-- The project utilizes tools such as Git, Jenkins, Docker, Terraform, and Kubernetes to build, test, and deploy applications in a CI/CD pipeline. -->

<details>
<summary><strong>Phase 1 — Foundation (Docker)</strong></summary>

<br>

This project demonstrates foundational Docker concepts by containerizing a simple Python Flask application.

### Requirements

✅ Create a Python Flask application  
✅ Containerize the Flask application  
✅ Push the image to Docker Hub  
✅ Use Docker volumes

### Project Plan

- Develop a simple Flask app
- Implement an endpoint to store data (to demonstrate Docker volumes)
- Create a Dockerfile for containerization
- Push the Docker image to Docker Hub
- Publish project code to GitHub

### Getting Started

#### Clone the repository

```bash
git clone https://github.com/ozgemer/devops-experts.git
cd devops-experts
```

#### Build the Docker image

```bash
docker build -t ozgemer/devops-experts:latest .
```

#### Run the application with Docker Compose

```bash
docker compose up -d
```

#### Open webapp

- [http://localhost:5000](http://localhost:5000)
- [http://localhost:5000/login](http://localhost:5000/login)

</details>