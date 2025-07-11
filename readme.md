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


<details>
<summary><strong>Phase 2: Orchestration (Kubernetes)</strong></summary>

### Requirements

✅ Set up a Kubernetes cluster  
✅ Deploy your Dockerized web application as a Kubernetes Pod  
✅ Create a Deployment and ReplicaSet for managing the application  
✅ Expose the application  
✅ Implement Horizontal Pod Autoscaling  
✅ Use ConfigMaps  
✅ Set up Kubernetes CronJobs  
✅ Implement Liveness and Readiness Probes

### Project Plan

- Run the application as a pod
- Create the yml files needed
- Apply & connect to deployment
- Set minikube to work

#### Kubernetes Pod Setup

```bash
kubectl run devops-experts --image=ozgemer/devops-experts:latest
```

```bash
kubectl get pods
```

#### Basic & Advanced Kubernetes Deployment Setup

```bash
source run_deployment.sh
```

#### Enable minikube service & metrics

```bash
minikube service devops-experts-nodeport
```
go to localhost at the port minikube assigned to open the flask app

```bash
minikube addons enable metrics-server
```

#### PV & PVC connectivity

```bash
 kubectl get pods
```
once pod is running

```bash
 kubectl exec -it <pod_id> -- touch /data/textfile.txt
```

```bash
 minikube ssh
```

```bash
ls -l /data
```
should show the file we just created at our minikube instance
</details>