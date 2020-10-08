cd $1;terraform init;terraform plan;terraform apply -auto-approve ;
aws eks update-kubeconfig --name getting-started-eks --region eu-central-1
