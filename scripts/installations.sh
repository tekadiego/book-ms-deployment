# Instal Docker

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker centos

# Mise à jour de la VM Bastion
sudo yum update -y

# Mise à jour de Aws cofig
 
mkdir ~/.aws && echo -e "[default] \nregion = us-east-1" > ~/.aws/config
aws eks --region us-east-1 update-kubeconfig --name EKS



# Installation de l'agent Code deploy
sudo yum install ruby-2.0.0.648-39.el7_9  wget-1.14-18.el7_6.1.x86_64 -y
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status

# creation du secret 

kubectl create secret docker-registry book-ms-ecr --docker-server=190752870288.dkr.ecr.us-east-1.amazonaws.com --docker-username=AWS --docker-password=$(aws ecr get-login-password --region us-east-1)