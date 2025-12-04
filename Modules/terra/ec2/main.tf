provider "aws" {
        profile = "default"
        region = "us-east-1"
}

resource "aws_instance" "ec2_o" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups
  subnet_id              = var.sub_id
  tags = merge(
    {
      Name = var.name
    },
    var.additional_tags
  )
}
