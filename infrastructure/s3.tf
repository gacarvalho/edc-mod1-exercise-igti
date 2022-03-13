resource "aws_s3_bucket" "dl" {
  bucket = "datalake-sesson-edc-tf"

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }
}
