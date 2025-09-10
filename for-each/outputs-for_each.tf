# To show public ip in output
output "public_ip" {
  value = [
    for key in aws_aws_instance.my_instance : key.public_ip
  ]
}
#To show public dns in output
output "public_ip" {
  value = [
    for key in aws_aws_instance.my_instance : key.public_ip
  ]
}

#To show private ip in output
output "public_ip" {
  value = [
    for key in aws_aws_instance.my_instance : key.public_ip
  ]
}