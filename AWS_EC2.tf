resource "aws_instance" "linux" {
  ami                         = data.aws_ami.amzn2-hvm.id
  instance_type               = var.inst_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.aws_sg.id]
  associate_public_ip_address = var.public_ip
  source_dest_check           = false
  key_name                    = aws_key_pair.key_pair.key_name
  user_data                   = file("user-data.sh")
  # root disk
  root_block_device {
    volume_size           = var.root_size
    volume_type           = var.root_type
    delete_on_termination = true
    encrypted             = true
  }
  # extra disk
  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = var.data_size
    volume_type           = var.data_type
    encrypted             = true
    delete_on_termination = true
  }
  tags = {
    Name = "EC2"
  }
}