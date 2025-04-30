output "tgw_id" {
  value = module.tgw.id
}

output "vpc_attachment_id" {
  value = module.vpc_attachment.attachment_id
}

output "tgw_peering_attachment_id" {
  value = module.tgw_peering.peering_attachment_id
}
