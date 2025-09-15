module "ec2_instance" {
  source = Module/Template
  
  instance_name= "Aws-trial"
  key_name= "tf"
  instance_type= "t2.micro"
  bucket_name= "trialbucket22"
  hash_key= "LockID"
  instance_count= "2"
  env= "dev"
}

module "ec2_instance" {
  source = Module/Template
  
  instance_name= "Aws-trial"
  key_name= "tf"
  instance_type= "t2.micro"
  bucket_name= "trialbucket22"
  hash_key= "LockID"
  instance_count= "1"
  env= "stg"
}

module "ec2_instance" {
  source = Module/Template
  
  instance_name= "Aws-trial"
  key_name= "tf"
  instance_type= "t2.micro"
  bucket_name= "trialbucket22"
  hash_key= "LockID"
  instance_count= "2"
  env= "prd"
}