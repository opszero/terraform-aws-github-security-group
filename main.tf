data "github_ip_ranges" "action" {}

resource "aws_security_group" "github" {
  name        = "github_meta_actions_ingress"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "github-meta-actions"
  }
}

resource "aws_security_group_rule" "github" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = data.github_ip_ranges.action.actions_ipv4
  ipv6_cidr_blocks  = data.github_ip_ranges.action.actions_ipv6
  security_group_id = aws_security_group.github.id
}

