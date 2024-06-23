# Node Hello World

Simple node.js app that servers "hello world"

Great for testing simple deployments to the cloud

## Run It

`npm start`

# Note Refer Snips folder for working of application.

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
3. Create Argo application file that will watch Helm chart values file and will deploy latest revision to our EKS cluster.
4. Create EKS cluster and install Argo CD in it and expose it as LoadBalancer.
5. Create Deployment and service with Type NodePort and open the nodeport on ec2 node of EKS cluster.

```
