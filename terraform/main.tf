provider "aws" {
  region = "us-east-1"
  s3_force_path_style = true
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check = true
  skip_requesting_account_id = true
  endpoints {
    ec2 = "http://localstack:4597"
    s3 = "http://localstack:4572"
    iam =  "http://localstack:4593"
    lambda = "http://localstack:4574"
  }
}

resource "aws_instance" "example" {
  ami           = "${var.ami_id}"
  instance_type = "m2.medium"

  tags = {
    Name = "${var.instance_name}"
    Test = "${var.test_label}"
  }
}
