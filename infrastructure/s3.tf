resource "aws_s3_bucket" "dl" {
  bucket = "datalake-sesson-edc-tf"

  tags = {
    IES   = "SESSON",
    CURSO = "EDC"
  }
}