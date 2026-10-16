provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "dayalan-instance" {
  ami           = "ami-090304fe440d6684e"
  instance_type = "t2.micro"
  tags          = { Name = "Dayalan-Tf-AWS" }
}

provider "azurerm" {}
