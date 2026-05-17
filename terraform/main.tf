terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "app_network" {
  name = "uly-dala-network"
}

resource "docker_image" "app" {
  name         = "uly-dala-coffee:latest"
  keep_locally = true
}

resource "docker_container" "app" {
  name  = "uly-dala-coffee-app"
  image = docker_image.app.image_id

  networks_advanced {
    name = docker_network.app_network.name
  }

  ports {
    internal = 4000
    external = 4000
  }

  env = [
    "PORT=${var.app_port}",
    "MONGODB_URI=${var.mongodb_uri}",
    "JWT_SECRET=${var.jwt_secret}",
    "JWT_EXPIRES_IN=${var.jwt_expires_in}",
    "APP_URL=${var.app_url}",
    "PASSWORD_RESET_EXPIRES_MINUTES=${var.password_reset_expires_minutes}",
    "SMTP_HOST=${var.smtp_host}",
    "SMTP_PORT=${var.smtp_port}",
    "SMTP_SECURE=${var.smtp_secure}",
    "SMTP_USER=${var.smtp_user}",
    "SMTP_PASS=${var.smtp_pass}",
    "SMTP_FROM=${var.smtp_from}"
  ]

  restart = "always"
}
