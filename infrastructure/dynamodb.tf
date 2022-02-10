//Locking - Dynamo DB

resource "aws_dynamodb_table" "backend_lock" {
    name = "${var.project_name}-lock"
    billing_mode = "PAY_PER_REQUEST"

    hash_key = "LockID"
    
    attribute {
        name = "LockID"
        type = "S"
    }

}



resource "aws_dynamodb_table" "notes" {
  name           = "notes"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}