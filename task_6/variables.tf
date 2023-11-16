variable "bucket_2" {
  type    = string
  default = "dareit-t6-bucket-ir"
}

variable "instance_2" {
  type    = string
  default = "vm-ir-tf"
}

variable "database_2" {
  type    = string
  default = "dareit"
}

variable "database_instance_2" {
  type    = string
  default = "dareit-database-instance"
}

variable "database_user" {
  type    = string
  default = "dareit_user"
}


#password manually anonimized
variable "db_password" {
  type    = string
  default = "******"
}

