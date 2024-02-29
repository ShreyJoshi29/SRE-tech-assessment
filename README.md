# SRE Tech Assessment Project

This repository contains the code and configuration files for the SRE Tech Assessment project. The project aims to containerize a simple web application using Docker and deploy it to a Kubernetes cluster.

# Project Structure

- **app.js**: Main Node.js application file.
- **Dockerfile**: Dockerfile for building the Docker image.
- **deployment.yaml**: Kubernetes Deployment manifest.
- **service.yaml**: Kubernetes Service manifest.
- **pvc.yaml**: Kubernetes PersistentVolumeClaim manifest.
- **README.md**: Project documentation.

# Setup

1. Install Docker and Kubernetes ( Minikube) on your local machine.
2. Build the Docker image using the provided Dockerfile: `docker build -t my-web-app .`
3. Apply the Kubernetes manifests to deploy the application: `kubectl apply -f .`

# Usage

Once the application is deployed, you can access it using the assigned service URL or IP address.

To run the application locally:
1. Clone the repository.
2. Run your web server: `node app.js`
3. Open a web browser and navigate to: http://localhost:3000


## Important Commands

- **Docker Build**: `docker build -t my-web-app .`
- **Docker run**: `docker run -p 3000:3000 my-web-app`
- **Push Docker Image**: `docker push docker.io/sj29/my-web-app:latest`
- **Kubernetes Apply**: `kubectl apply -f deployment.yaml`
- **Kubectl Pods**: `kubectl get pods -o wide`

## Additional Notes

- **GitHub Repository**: [SRE-tech-assessment](https://github.com/ShreyJoshi29/SRE-tech-assessment)
- **DockerHub Container**: [sj29/my-web-app](https://hub.docker.com/r/sj29/my-web-app)
