variable "region" {}
variable "shared_credentials_file" {}
variable "profile" {}
variable "key_name" {}

provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  region     = "${var.region}"
  profile    = "${var.profile}"
}

resource "aws_instance" "test" {
  ami           = "ami-6b3fd60c"
  instance_type = "t2.micro"
  key_name   = "${var.key_name}"
  tags {
    Name = "tst-ubuntu-16.04"
    Terraform = "true"
    Environment = "Dev"
  }
}
