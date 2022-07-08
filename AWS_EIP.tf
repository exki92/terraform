# Create Elastic IP for the EC2 instance
resource "aws_eip" "eip" {
  vpc = true
  tags = {
    Name = "EIP"
  }
}
# Associate Elastic IP to Linux Server
resource "aws_eip_association" "inst_eip" {
  instance_id   = aws_instance.linux.id
  allocation_id = aws_eip.eip.id
}
