provider "aws" {
  region = "eu-central-1"
}

# terraform {
#     backend "s3" {
#         bucket = "sample-project-ka2-state"
#         #key = "07-backend-state-users-dev"
#         key = "dev/backend-state"
#         region = "eu-central-1"
#         dynamodb_table = "sample-project-ka2-lock"
#         encrypt = true
#     }
# }