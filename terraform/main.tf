resource "azurerm_container_group" "aci" {
  name                = var.container_name
  location            = var.location
  resource_group_name = var.resource_group
  os_type             = "Linux"

  ip_address_type     = "Public"
  dns_name_label      = var.container_name

  container {
    name   = var.container_name
    image  = var.image_name
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }

    environment_variables = {
      ENV = "dev"
    }

    secure_environment_variables = {
      DOCKER_USERNAME = var.docker_username
      DOCKER_PASSWORD = var.docker_password
    }
  }

  image_registry_credential {
    server   = var.registry_server
    username = var.docker_username
    password = var.docker_password
  }

  tags = {
    environment = "dev"
  }
}