# NodeJS AKS POC

A NodeJs application that was containerized using Docker and setup orchestration using Kubernetes and deployed to AKS.

## How to run

### Build the Dockerfile

```bash
# Note: we need to specify platform to linux.amd64 to ensure that the docker image was build in a amd64 not in arm.
docker build -t api-server:v1 --platform=linux/amd64 .
```
### Run all the kubernetes required YAML 
```bash
$ kubectl apply -f ./k8s
```
