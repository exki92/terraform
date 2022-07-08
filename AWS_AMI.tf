data "aws_ami" "amzn2-hvm" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["137112412989"] # amz
  # owner = ["windows","self"]
  tags = {
    Name = "AMI"
  }

}
