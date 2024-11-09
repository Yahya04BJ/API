provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id = true

  endpoints {
    apigateway = "http://localhost:4566"
    lambda     = "http://localhost:4566"
  }
}
