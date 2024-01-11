output "instance_id" 
{
  description = "ID of the EC2 instance"
  value       = aws_instance.function_name.id #function_name refers to in main.tf where the code for creation of ec2 is written.
}

output "instance_public_ip" 
{
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.function_name.public_ip
}
