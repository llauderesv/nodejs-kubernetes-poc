# NodeJS k8s POC

A NodeJS application that was containerized using Docker and setup orchestration using Kubernetes and deployed to Azure Kubernetes Service.

## How to run

### Build the Dockerfile

```bash
# Note: we need to specify the docker build to use the platform linux/amd64 to ensure that 
# the docker image was build in a amd64 not in arm.
docker build -t api-server:v1 --platform=linux/amd64 .
```

### Run all the kubernetes required YAML 
```bash
$ kubectl apply -f ./k8s
```
