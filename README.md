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


To use the terraform, you need to configure your aws account using **Access Key ID and Access secret ID** <br>


# Using Terraform

After installing Terraform: <br>

--> Create a file with **.tf** extension. <br>
--> Now write the script that is commands to create **EC2, Virtual Network, etc...**  <br>
--> Use the command **terraform init** to preapre the working file where scripting is written.  <br>


#Script:  <br>

provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}  <br>


--> Now use the command **terraform apply** to perform the operation written in script.
