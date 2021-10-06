resource "aws_iam_user" "suresh" {
  name = var.iam_user_s3_read
}

resource "aws_iam_user" "sudheer" {
  name = var.iam_user_s3_read_write
}
