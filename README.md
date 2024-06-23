# Node Hello World

Simple node.js app that servers "hello world"

Great for testing simple deployments to the cloud

## Run It

`npm start`


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

