# CICD-Express

### Deploy Docker container with ExpressJS application to EKS Cluster on AWS using CircleCI pipeline

Steps:
  - Lint expressjs
  - Lint Dockerfile
  - Build and publish Docker image to Docker Hub
  - Create EKS cluster, if parameter run_create_cluster is set as true
  - Test cluster
  - Create LoadBalancer service
  - Create EKS Deployment
  - Update container image (Rolling update)
  - Get Kubernetes pods
