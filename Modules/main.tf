module "my_ec2" {
  source            = "./terra/ec2"
  name              = "slave"
  ami               = "ami-0ecb62995f68bb549"
  instance_type     = "t3.micro"
  security_groups   = ["sg-01991bd3fd6c69840"]
  sub_id            = "subnet-0e22fb310a1ad5504"
  additional_tags   = { Environment = "dev" }
}
