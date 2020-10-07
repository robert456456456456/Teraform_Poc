aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2
aws configure set default.region eu-central-1
aws configure set output.format json
yum install -y jq gzip nano tar git unzip wget;
curl -o /tmp/terraform.zip -LO https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip;unzip /tmp/terraform.zip;chmod +x terraform && mv terraform /usr/local/bin/terraform
aws eks update-kubeconfig --name getting-started-eks --region eu-central-1
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl