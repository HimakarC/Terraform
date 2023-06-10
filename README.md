#Terraform

# To install Terraform in Linux:

--> sudo apt-get update && sudo apt-get install -y gnupg software-properties-common  <br>
--> wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg  <br>
--> echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list  <br>
--> sudo apt update  <br>
--> sudo apt-get install terraform  <br>
