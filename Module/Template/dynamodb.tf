resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${var.env}-dynamodb-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "${var.hash_key}"
  attribute {
    name = "${var.hash_key}"
    type = "S"
  }

  tags = {
    Name        = "${var.env}-dynamodb-table"
    Environment= "${var.env}"
  }
}

resource aws_s3_bucket s3_bucket{
   bucket= "${var.env}-${var.bucket_name}"
             
   tags= {
      name= "${var.env}-${var.bucket_name}"
      Environment= "${var.env}"
   }
}
