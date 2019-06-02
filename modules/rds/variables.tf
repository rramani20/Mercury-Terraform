#
# RDS - variables.tf
#
###############################################################################
variable "environment" {
  description = "enivorment identifier"
}

variable "vpc_id" {
  description = "vpc to associate this RDS instance"
}

variable "associate_subnet_ids" {
  description = "list of subnet ids this RDS instance is associated with"
  type        = "list"

  default = [
    "subnet-0077510a219998fef",
    "subnet-0fa9d10b60ce323b2"
  ]
}

variable "db_param_family" {
  description = "database family specific to the database engine implementation"
  default     = "postgres10"
}

variable "db_storage_allocation" {
  description = "storage to allocate for db instance"
  default     = 10
}

variable "db_storage_type" {
  description = "volume storage type (i.e: gp2,io1,st1,sc1)"
  default     = "standard"
}

variable "db_engine" {
  default = "postgres"
}

variable "db_engine_version" {
  default = "10.6"
}

variable "db_instance_class" {
  default = "db.t2.micro"
}

variable "db_instance_name" {}

variable "db_instance_identifier_prefix" {}

variable "db_master_username" {}

variable "db_master_password" {}

variable "db_apply_immediately" {
  default = true
}

variable "db_storage_encrypted" {
  default = false
}

variable "db_multi_az" {
  default = false
}

variable "db_public" {
  default = false
}

variable "db_skip_final_snapshot" {
  default = true
}

variable "db_final_snapshot_identifier" {
  default = "orc-snapshot"
}