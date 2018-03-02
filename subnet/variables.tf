variable "vpc_id" {
  description = "VPC in which subnet to be created"
}

variable "sn_name" {
  default     = "DEFAULT_SN_NAME"
  description = "Name tag for the Public Subnet in AZ A"
}

variable "sn_cidr" {
  description = "CIDR for Subnet"
}
