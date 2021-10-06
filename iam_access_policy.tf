resource "aws_iam_user_policy" "suresh_ro" {
  name = "suresh-policy-s3"
  user = aws_iam_user.suresh.name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : ["s3:ListBucket"],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_access}"]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:GetObject",
        ],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_access}/*"]
      }
    ]
  })
}

resource "aws_iam_user_policy" "sudheer_rw" {
  name = "suresh-policy-s3"
  user = aws_iam_user.sudheer.name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : ["s3:ListBucket"],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_write_access}"]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:GetObject",
        ],
        "Resource" : ["arn:aws:s3:::${var.bucket_read_write_access}/*"]
      }
    ]
  })
}

