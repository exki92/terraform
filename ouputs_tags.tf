output "vpc_resource_level_tags" {
  value = aws_vpc.vpc.tags
}

output "ec2_tags" {
  value = aws_instance.linux.tags
}