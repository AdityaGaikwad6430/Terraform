resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Gtr34-tf-state-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Gtr34-tf-state-table"
  }
}