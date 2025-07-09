variable "resource_group" {
  type        = string
  description = "Azure resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "container_name" {
  type        = string
  description = "ACI container group name and DNS label"
}

variable "image_name" {
  type        = string
  description = "Full image name with tag"
}

variable "registry_server" {
  type        = string
  description = "ACR registry server"
}

variable "docker_username" {
  type        = string
  description = "ACR username"
  sensitive   = true
}

variable "docker_password" {
  type        = string
  description = "ACR password"
  sensitive   = true
}