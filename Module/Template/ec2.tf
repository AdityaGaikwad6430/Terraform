#Aws key pair
resource "aws_key_pair" "my_key" {
    key_name = "${var.key_name}-${var.env}"
    public_key= file("${var.key_name}-${var.env}.pub")
}
#aws vpc
resource "aws_default_vpc" "name" {
  
}

# Aws security group
resource "aws_security_group" "automate-sg" {
    #Inbound rules
    name = "automate-sg"
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
    count = var.instance_count
    key_name = aws_key_pair.my_key.key_name
    security_groups = [aws_security_group.automate-sg.name]
    ami = vars.ami
    instance_type = var.instance_type
    root_block_device {
     volume_size = var.env == "prd" ? 20 : 10
     volume_type = "gp3"
    }
    tags = {
     Name= var.instance_name
     Environment= var.env
    }
}