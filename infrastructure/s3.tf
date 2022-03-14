resource "aws_s3_bucket" "dl" {
	bucket = "datalake-sesson-edc-tf"

	tags = {
		IES   = "SESSON",
		CURSO = "EDC"
	}
}

resource "aws_s3_bucket" "streaming" {
	bucket = "bucket-sesson-streaming"

	tags = {
		IES   = "IGTI",
		CURSO = "EDC"
	}
}