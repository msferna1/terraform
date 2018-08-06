provider "aws" {
  shared_credentials_file = "~/.aws/credentials/london"
  region     = "eu-west-2"
  profile    = "terraform"
}

resource "aws_instance" "test" {
  ami           = "ami-ee6a718a"
  instance_type = "t2.micro"
  tags {
    Name = "tst-centos7"
  }
}

