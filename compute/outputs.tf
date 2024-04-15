output "ec2_instance_id" {
  description = "EC2 인스턴스 ID"
  value       = aws_instance.ec2_instance.id
}

output "ec2_instance_public_ip" {
  description = "EC2 인스턴스 퍼블릭 IP"
  value       = aws_instance.ec2_instance.public_ip
}