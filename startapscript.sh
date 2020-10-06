aws configure set aws_access_key_id $2
aws configure set aws_secret_access_key $3
aws configure set default.region eu-central-1
aws configure set output.format json
yum install -y jq gzip nano tar git unzip wget;
curl -o /tmp/terraform.zip -LO https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip;unzip /tmp/terraform.zip;chmod +x terraform && mv terraform /usr/local/bin/terraform
cd $1;terraform init;terraform plan;terraform apply -auto-approve 