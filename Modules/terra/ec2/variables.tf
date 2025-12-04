variable "name" {
  type        = string
  description = "Name tag for the EC2 instance"
}

variable "ami" {
  type        = string
  description = "AMI ID to use for EC2"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "sub_id" {
  type        = string
}

variable "security_groups" {
  type        = list(string)
}

variable "additional_tags" {
  type    = map(string)
  default = {}
}
