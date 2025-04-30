output "attachment_id" {
  value = aws_ec2_transit_gateway_vpc_attachment.this[0].id
  condition = var.create_vpc_attachment
}