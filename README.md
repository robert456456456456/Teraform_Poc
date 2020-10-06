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
# Atomation Script
```
# You can run it and he do all Manul steps
# For exmple
./startapscript.sh  kubernetes/cloud/amazon/terraform

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

# Terraform CLI 

```
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

terraform init

terraform plan
terraform apply

```

# Lets see what we deployed

```
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


```

# Clean up 

```
terraform destroy
```
