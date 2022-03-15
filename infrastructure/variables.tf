variable "aws_region" {
  default = "us-east-2"
}

variable "lambda_function_name" {
  default = "SESSONexecutaEMR"
} 


variable "key_pair_name" {
  default = "iam-gacarvalho-key-pair"
}

variable "airflow_subnet_id" {
  default = "subnet-083c1179855ee1412"
}

variable "vpc_id" {
  default = "vpc-0d14a1ef5af9bfd85"
}