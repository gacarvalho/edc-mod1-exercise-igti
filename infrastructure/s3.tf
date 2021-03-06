resource "aws_s3_bucket" "dl" {
	bucket = "datalake-sesson-edc-tf"

	tags = {
		IES   = "SESSON",
		CURSO = "EDC"
	}
}

resource "aws_s3_bucket" "stream" {
	bucket = "bucket-sesson-streaming-aws"

	tags = {
		IES   = "IGTI",
		CURSO = "EDC"
	}
}