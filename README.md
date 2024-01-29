# final_project_upskill_23_devops

The workshop utilizes the following technologies and tools:

- GitHub Actions: CI/CD platform integrated with GitHub for automating workflows.
- AWS: Cloud services provider for hosting applications and managing infrastructure.
- EKS: Amazon Elastic Kubernetes Service for deploying, managing, and scaling containerized applications.
- ArgoCD: Declarative GitOps continuous delivery tool for Kubernetes.
- Terraform: Infrastructure as Code (IaC) tool for provisioning and managing AWS resources.
- ECR: Amazon Elastic Container Registry for securely storing and managing Docker images.
Scanning images docu
- Kubernetes Dashboard: Monitoring the k8s cluster
- Improvement - terraform with a pipeline, dashboard exposed, cpu and memory metrics to show up for pods

Steps:

1) Run Terraform to build the AWS environment
2) Push to repo to start the Github Actions pipeline to push the images to ECR for api and web
3) Switch context to AWS
    - aws eks update-kubeconfig --name eks-dev0ps-cluster --region eu-central-1 --profile default
    - kubectl config use-context arn:aws:eks:eu-central-1:185332529335:cluster/eks-dev0ps-cluster
4) Install ArgoCD
    - Configure SSH: ssh-keygen -t rsa -b 4096
    - kubectl create namespace argocd	
    - kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    - kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
5) Install Kubernetes Dashboard
    - https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/
