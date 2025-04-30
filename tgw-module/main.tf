module "tgw" {
  source      = "./modules/tgw"
  description = "Main TGW"
  tags = {
    Name = "main-tgw"
  }
}

module "vpc_attachment" {
  source                = "./modules/tgw-vpc-attachment"
  create_vpc_attachment = true
  subnet_ids            = ["subnet-abc", "subnet-def"]
  vpc_id                = "vpc-xyz"
  transit_gateway_id    = module.tgw.id
  tags = {
    Name = "vpc-attach"
  }
}

module "tgw_peering" {
  source                  = "./modules/tgw-peering"
  transit_gateway_id      = module.tgw.id
  peer_account_id         = "123456789012"
  peer_region             = "us-west-2"
  peer_transit_gateway_id = "tgw-abc123"
  tags = {
    Name = "tgw-peer"
  }
}
