# Teraform_Poc
Create Terafoms simple templates  
# Getting Started with Amazon EKS using Terraform

More resources:

Terraform provider for AWS [here](https://www.terraform.io/docs/providers/aws/index.html) <br/>

## Amazon CLI

You can get the Amazon CLI on [Docker-Hub](https://hub.docker.com/r/amazon/aws-cli) <br/>
We'll need the Amazon CLI to gather information so we can build our Terraform file.

```
# Run Amazon CLI
docker run -it --rm -v ${PWD}:/work -w /work --entrypoint /bin/sh amazon/aws-cli:2.0.43

```
# Automation Scripts
```
# You can run it and he do all Manul steps
# For exmple
terraform_wordpress
./startapscript.sh  kubernetes/cloud/amazon/terraform_wordpress AKIAJU23EPHY3BZEP5XA "DBNKzY/EqOFNTdSoWjFSxOGvyrSHAZ4lgFfFU9i8"
./startapscript.sh  kubernetes/cloud/amazon/terraform_RDS AKIAJU23EPHY3BZEP5XA "DBNKzY/EqOFNTdSoWjFSxOGvyrSHAZ4lgFfFU9i8"
./startapscript_conect.sh AKIAJU23EPHY3BZEP5XA "DBNKzY/EqOFNTdSoWjFSxOGvyrSHAZ4lgFfFU9i8"

```

# Manual 
```
# some handy tools :)
yum install -y jq gzip nano tar git unzip wget

```
## Access your "My Security Credentials" section in your profile. 
## Create an access key

aws configure

Default region name: eu-central-1
Default output format: json
```
```
# Terraform CLI 
# Get Terraform

curl -o /tmp/terraform.zip -LO https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip
unzip /tmp/terraform.zip
chmod +x terraform && mv terraform /usr/local/bin/
terraform
```

## Terraform Amazon Kubernetes Provider 

Documentation on all the Kubernetes fields for terraform [here](https://www.terraform.io/docs/providers/aws/r/eks_cluster.html)

```
cd kubernetes/cloud/amazon/terraform

terraform init;terraform plan;terraform apply -auto-approve

```
```
# Lets see what we deployed

# grab our EKS config
aws eks update-kubeconfig --name getting-started-eks --region eu-central-1
```
# Get kubectl

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

kubectl get nodes
kubectl get deploy
kubectl get pods
kubectl get svc
kubectl get pods --all-namespaces 

kubectl exec -t -i terraform-example-568dbf4f95-vzlng bash 
kubectl exec -t -i terraform-example-568dbf4f95-8rk6h bash

kubectl exec -it terraform-example-568dbf4f95-8rk6h -- bash -c "ls"
kubectl cp aws_rds.tf terraform-example-568dbf4f95-8rk6h:/var/www/html
kubectl cp terraform-example-568dbf4f95-8rk6h:/var/www/html/wp-config.php /work/kubernetes/cloud/amazon/terraform_RDS/wp-config.php

```

# Clean up 

```
terraform destroy  -auto-approve
```
