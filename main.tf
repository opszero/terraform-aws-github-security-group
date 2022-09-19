resource "aws_security_group" "github" {
  name        = "github_meta_actions_ingress"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "github-meta-actions"
  }
}

