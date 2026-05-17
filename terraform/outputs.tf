output "app_container_name" {
  description = "Name of the running application container"
  value       = docker_container.app.name
}

output "app_url" {
  description = "Application URL"
  value       = "http://localhost:${var.app_port}"
}

output "network_name" {
  description = "Docker network name"
  value       = docker_network.app_network.name
}
