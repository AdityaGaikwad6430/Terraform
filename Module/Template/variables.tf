variable "env" {
   description = "Enter the Environment for the Infrastructure"
   type = string
}

variable "instance_type" {
   description = "Enter the instance type"
   type = string
}

variable "instance_name" {
    description = "Enter the name of the instace"
    type = string
}

variable "hash_key" {
   description = "Enter the hash key name"
   type = string
}

variable "bucket_name" {
   description = "Enter the bucket name"
   type = string
}

variable "key_name" {
    description = "Enter the name of the key"
    type = string 
}

variable "instance_count" {
    description = "Enter the number of instances"
    type = string 
}