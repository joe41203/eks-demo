resource "aws_iam_user" "ci" {
  name = "${var.code}-github-action"
  path = "/"

  tags = {
    Name = "${var.code}-github-action"
    CI   = true
  }
}

resource "aws_iam_user_policy_attachment" "ci" {
  user       = aws_iam_user.ci.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
}
