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
  ami           = "ami-ee6a718a"
  instance_type = "t2.micro"
  key_name   = "${var.key_name}"
  tags {
    Name = "tst-centos7"
    Terraform = "true"
    Environment = "Dev"
  }
}

