# Node.js HelloWorld Application

This repository contains a simple Node.js HelloWorld application that can be Dockerized and deployed on Kubernetes (K8s).

## Prerequisites

To run and deploy the application, ensure that you have the following prerequisites installed on your system:

- Node.js (version 14 or higher)
- Docker
- Kubernetes cluster
- Helm package manager

## Getting Started

Follow these steps to deploy the application on Kubernetes:

1. Clone this repository:

   ```bash
   git clone https://github.com/aryasoni98/QD-Devops.git
   ```

### Dockerize the application:
- Install the Docker CLI and make sure Docker is running.
- Navigate to the cloned repository:

```bash 
cd node-hello
```

Build and tag the Docker image:

```bash
docker build -t node-hello:latest .
```

### Deploy the application using Helm:
- Make sure your Kubernetes cluster is running and accessible.
- Install Helm if you haven't already.
- Navigate to the node-hello-chart directory:

```bash 
cd k8s
```
Deploy the application using the Helm chart:

```bash 
helm install node-hello .
```

### Access the application:
- Get the external IP of the service:

```bash 
kubectl get svc node-hello
```

Open a web browser and visit http://<external-ip>:3000.
You should see the "Hello World!" message displayed.