variable "before_run" {
  default = "1s"
}

variable "internet_service" {
  type = number
  default = 0 // Indicates whether to enable the access to an instance from public network: 0 - No, 1 - Yes.
}

variable "engine_version" {
  default = "5.7"  //Supported versions include 5.5/5.6/5.7/8.0, and default is 5.7.
}
variable "charge_type" {
  default = "POSTPAID" // Pay type of instance. Valid values:PREPAID, POSTPAID. Default is POSTPAID
}

variable "prepaid_period" {
  default = 1
}

variable "root_password" {
  default = ""
}
variable "slave_deploy_mode" {
  type = number
  default = 0 // Available values: 0 - Single availability zone; 1 - Multiple availability zones.
}
variable "first_slave_zone" {
  default = ""
}
variable "second_slave_zone" {
  default = ""
}
variable "slave_sync_mode" {
  default = 1 // Data replication mode. 0 - Async replication; 1 - Semisync replication; 2 - Strongsync replication.
}
variable "availability_zone" {
  type = string // Indicates which availability zone will be used.
}
variable "instance_name" {
  type = string
}

variable "cpu" {
  default = 1
}
variable "mem_size" {
  default = 1000 // Memory size (in MB).
}
variable "volume_size" {
  default = 50 // Disk size (in GB).
}
variable "vpc_id" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "intranet_port" {
  default = 3306 // [1024~65535]
}
variable "security_groups" {
  type = list(string)
  default = []
}
variable "tags" {
  type = map(string)
  default = {}
}

variable "project_id" {
  default = 0
}

variable "parameters" {
  type = map(string)
  default = {}
}

