kubectl cp $1:/var/www/html/wp-config.php /work/kubernetes/cloud/amazon/terraform_RDS/wp-config.php
kubectl cp  /work/kubernetes/cloud/amazon/terraform_RDS/wp-config.php $2:/var/www/html
