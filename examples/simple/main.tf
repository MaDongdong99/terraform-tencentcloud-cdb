
module "users" {
  source = "../.."
  cdbs = [
    {
      before_run = "0s"
      internet_service  = 0
      engine_version    = "5.7"
      charge_type       = "POSTPAID"
      prepaid_period = 1
      root_password     = "P@ssword!@#"
      slave_deploy_mode = 0
      slave_sync_mode   = 1
      availability_zone = "ap-nanjing-3"
      instance_name     = "cdbtest1-1"
      mem_size          = 1000
      volume_size       = 50
      cpu = 1
      vpc_id            = "vpc-9pdj4sep"
      subnet_id         = "subnet-1euv6wbo"
      intranet_port     = 3306
      security_groups   = ["sg-mdqkafy8"]

      tags = {
        owner = "multi-cloud"
      }

      parameters = {

      }
    },
    {
      before_run = "5s"
      internet_service  = 0
      engine_version    = "5.7"
      charge_type       = "POSTPAID"
      prepaid_period = 1
      root_password     = "P@ssword!@#"
      slave_deploy_mode = 0
      slave_sync_mode   = 1
      availability_zone = "ap-nanjing-3"
      instance_name     = "cdbtest1-2"
      mem_size          = 1000
      volume_size       = 50
      cpu = 1
      vpc_id            = "vpc-9pdj4sep"
      subnet_id         = "subnet-1euv6wbo"
      intranet_port     = 3306
      security_groups   = ["sg-mdqkafy8"]

      tags = {
        owner = "multi-cloud"
      }

      parameters = {

      }
    }

  ]
}

output "id" {
  value = module.users.cdb_id_map
}