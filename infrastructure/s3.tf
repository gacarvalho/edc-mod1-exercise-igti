resource "aws_s3_bucket" "dl" {
    bucket = "datalake-sesson-edc-tf"
    acl = "private"

    tags = {
        SESSON = "EDC",
        CURSO = "IES"
    }

    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
}