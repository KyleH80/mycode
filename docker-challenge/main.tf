terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.0.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "simplegoservice" {
  name = "registry.gitlab.com/alta3/simplegoservice"
  keep_locally = true      // keep image after "destroy"
}

resource "docker_container" "simplegoservice" {
  name  = var.container_name
  image = docker_image.simplegoservice.image_id
  network_mode = "bridge"
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}

