# Node Hello World

Simple node.js app that servers "hello world"

Great for testing simple deployments to the cloud

## Run It

`npm start`

# Note Refer to Snips folder for working of the application.

# This is Just POC/simple implementation of the application !! It is not recommended to use NodePort in production always use LoadBalancer or ingress for exposing the application.

## Project structure
```
.
├── ----------NODE JS K8s PROJECT---------
├── | Helm/
├── │ └── node-hello/
├── │ ├── Chart.yaml
├── │ ├── templates/
├── │ │ ├── deployment.yaml
├── │ │ ├── service.yaml
├── │ │ └── _helpers.tpl
├── │ └── values.yaml
├── ├── argocd/
├── │ └── application.yaml
├── ├── index.js
├── ├── Dockerfile
├── ├── .dockerignore
├── └── README.md
└── .github/workflows
```

## Description/working
```
1. Create Dockerfile and dockerize the nodejs application.
2. Create github workflow.
  a. It will have multiple steps as:
  b. Prepare docker build -> login to docker hub (Make sure to store secrets in githubs for uname passed) -> push image with tag same as GITHUB.RUNID --> update Helm chart value with latest image tag.
3. Create an Argo application file that will watch the Helm chart values file and deploy the latest revision to our EKS cluster.
4. Create an EKS cluster, install Argo CD, and expose it as LoadBalancer.
5. Create Deployment and service with Type NodePort and open the nodeport on ec2 node of EKS cluster.

```
