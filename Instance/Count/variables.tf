variable "ami" {
   default =  "ami-0360c520857e3138f"
   type = string
}

variable "ec2_default_root_storage_size" {
  default = "20"
  type = number
}

variable "env" {
  default = "dev"
  type = string
}
