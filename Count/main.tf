#Aws key pair
resource "aws_key_pair" "ets" {
  key_name = "ets"
  public_key= file(ets.pub)
}
#aws vpc
resource "aws_default_vpc" "name" {
  
}

# Aws security group
resource "aws_security_group" "automate-sg" {
 #Inbound rules
  name = "automate-sg"
  tags = "${var.env}-automate-sg"
  vpc_id = aws_default_vpc.id
  ingress = {
    from_port= 22
    to_port= 22
    protocol= "tcp"
    cidr_blocks= ["0.0.0.0/0"]

    from_port= 80
    to_port= 80
    protocol= "tcp"
    cidr_blocks= ["0.0.0.0/0"]
    from_port= 8000
    to_port= 8000
    protocol= "tcp"
    cidr_blocks= ["0.0.0.0/0"]
  }
   # Outbound rules
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  # Outbound rules
 egress {
   from_port        = 0
   to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
}

#AWS instance
resource "aws_instance" "my_instance" {
  count = 2
  key_name = aws_key_pair.ets.key_name
  security_groups = [aws_security_group.automate-sg.name]
  ami = vars.ami
  instance_type = "t2.micro"
  root_block_device {
   volume_size = var.env == "prd" ? 20 : var.ec2_default_root_storage_size
   volume_type = "gp3"
  }
  tags = {
   name= "Terraform basic"
    environment= var.env
  }
}