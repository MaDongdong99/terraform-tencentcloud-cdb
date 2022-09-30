locals {

  cdbs = { for cdb in var.cdbs: cdb["instance_name"] => cdb}


}

module "cdbs" {
  source = "./modules/cdb_with_delay"
  for_each = local.cdbs

  before_run = each.value.before_run
  internet_service  = each.value.internet_service
  engine_version    = each.value.engine_version
  charge_type       = each.value.charge_type
  prepaid_period = each.value.prepaid_period
  root_password     = each.value.root_password
  slave_deploy_mode = each.value.slave_deploy_mode
  first_slave_zone  = each.value.first_slave_zone
  second_slave_zone = each.value.second_slave_zone
  slave_sync_mode   = each.value.slave_sync_mode
  availability_zone = each.value.availability_zone
  instance_name     = each.value.instance_name
  mem_size          = each.value.mem_size
  volume_size       = each.value.volume_size
  cpu = each.value.cpu
  vpc_id            = each.value.vpc_id
  subnet_id         = each.value.subnet_id
  intranet_port     = each.value.intranet_port
  security_groups   = each.value.security_groups

  tags = each.value.tags

  parameters = each.value.parameters

}

output "cdb_id_map" {
  value = { for name, cdb in module.cdbs: name => cdb.id }
}