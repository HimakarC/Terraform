provisioner "remote-exec" {
    inline = [
      "echo 'Remote exec also works!'"
    ]

    connection {
      type        = "ssh"
      host        = var.host_ip
      user        = "ec2-user"
      private_key = file(var.private_key_path)
    }
  }
