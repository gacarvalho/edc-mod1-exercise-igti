provider "aws" {
    region = var.aws_region
}

# Centralizar o arquivo de controle de estado do terraform
terraform {
    backend "s3"{
        bucket = "terraform-state-sesson"
        key    = "state/sesson/edc/module/terraform.tfstate"
        region = "us-east-2"
    }
}