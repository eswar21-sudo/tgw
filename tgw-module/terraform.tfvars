create_vpc_attachment = true
subnet_ids            = ["subnet-abc", "subnet-def"]
vpc_id                = "vpc-xyz"
peer_account_id       = "123456789012"
peer_region           = "us-west-2"
peer_transit_gateway_id = "tgw-abc123"
tags = {
  Environment = "dev"
  Project     = "networking"
}