
variable "cdbs" {
  type = list(object({
    before_run = optional(string)
    internet_service  = optional(number)
    engine_version    = optional(string)
    charge_type       = optional(string)
    prepaid_period = optional(number)
    root_password     = optional(string)
    slave_deploy_mode = optional(number)
    first_slave_zone  = optional(string)
    second_slave_zone = optional(string)
    slave_sync_mode   = optional(string)
    availability_zone = string
    instance_name     = string
    mem_size          = optional(number)
    volume_size       = optional(number)
    cpu = optional(number)
    vpc_id            = string
    subnet_id         = string
    intranet_port     = optional(number)
    security_groups   = optional(list(string))

    tags = optional(map(string))

    parameters = optional(map(string))
  }))
  default = []
}
