locals {


}

resource "time_sleep" "wait_some_seconds" {
  create_duration = var.before_run
  triggers = {
    always_run = timestamp()
  }
}

resource "tencentcloud_mysql_instance" "foo" {
  depends_on = [time_sleep.wait_some_seconds]
  internet_service  = var.internet_service
  engine_version    = var.engine_version
  charge_type       = var.charge_type
  prepaid_period = var.prepaid_period
  root_password     = var.root_password
  slave_deploy_mode = var.slave_deploy_mode
  first_slave_zone  = var.first_slave_zone
  second_slave_zone = var.second_slave_zone
  slave_sync_mode   = var.slave_sync_mode
  availability_zone = var.availability_zone
  instance_name     = var.instance_name
  mem_size          = var.mem_size
  volume_size       = var.volume_size
  cpu = var.cpu
  vpc_id            = var.vpc_id
  subnet_id         = var.subnet_id
  intranet_port     = var.intranet_port
  security_groups   = var.security_groups

  tags = var.tags

  parameters = var.parameters
}


output "id" {
  value = tencentcloud_mysql_instance.foo.id
}