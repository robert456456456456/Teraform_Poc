cd $1
terraform destroy  -auto-approve
rm -rf terraform.tfstate .terraform terraform.tfstate.backup
