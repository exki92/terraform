variable "inst_type" {
  type        = string
  description = "instance type"
  default     = "t2.micro"
}
variable "public_ip" {
  type        = bool
  description = "public IP address"
  default     = true
}
variable "root_size" {
  type        = number
  description = "root volume size"
  default     = 20
}
variable "data_size" {
  type        = number
  description = "data volume size"
  default     = 10
}
variable "root_type" {
  type        = string
  description = "Volume type of root volume"
  default     = "gp2"
}
variable "data_type" {
  type        = string
  description = "Volume type of data volume"
  default     = "gp2"
}