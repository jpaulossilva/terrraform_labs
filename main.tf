# Configuração do terraform
terraform {    
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

#Configuração de qual o provedor que estamos usando e qual região.
provider "aws" {
  region  = "us-east-1"
}

# Recurso que será deployado.

resource "aws_instance" "app_server" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name = "ec2"
  

  tags = {
    Name = "Primeira Instancia Aws Labs"
  }
}
