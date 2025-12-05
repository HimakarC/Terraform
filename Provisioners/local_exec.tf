provider "aws" {
        profile = "default"
        region = "us-east-1"
}

resource "null_resource" "ok" {
        provisioner "local-exec" {
                command = "echo EC2 Created: bye >> created.txt"
        }
}
