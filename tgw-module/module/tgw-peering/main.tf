resource "aws_ec2_transit_gateway_peering_attachment" "this" {
  peer_account_id         = var.peer_account_id
  peer_region             = var.peer_region
  peer_transit_gateway_id = var.peer_transit_gateway_id
  transit_gateway_id      = var.transit_gateway_id
  tags                    = var.tags
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "this" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.this.id
  tags                          = var.tags
}