# To show public ip in output
output "ec2_public_ip" {
  value = aws_instance.my_instance[*].public_ip
}
#To show public dns in output
output "ec2_public_dns" {
  value = aws_instance.my_instance[*].public_dns
}

#To show private ip in output
output "ec2_private_ip" {
  value = aws_instance.my_instance[*].private_ip
}

#remove * if count is not used in the file or dont want to show outputs of multiple instances