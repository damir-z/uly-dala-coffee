variable "app_port" {
  description = "Port the application listens on"
  type        = number
  default     = 4000
}

variable "mongodb_uri" {
  description = "MongoDB connection string"
  type        = string
  sensitive   = true
}

variable "jwt_secret" {
  description = "JWT signing secret"
  type        = string
  sensitive   = true
}

variable "jwt_expires_in" {
  description = "JWT expiry duration"
  type        = string
  default     = "7d"
}

variable "app_url" {
  description = "Public application URL"
  type        = string
  default     = "http://localhost:4000"
}

variable "password_reset_expires_minutes" {
  description = "Password reset token expiry in minutes"
  type        = number
  default     = 15
}

variable "smtp_host" {
  description = "SMTP host"
  type        = string
  default     = "smtp.zoho.com"
}

variable "smtp_port" {
  description = "SMTP port"
  type        = number
  default     = 587
}

variable "smtp_secure" {
  description = "SMTP secure"
  type        = string
  default     = "false"
}

variable "smtp_user" {
  description = "SMTP username"
  type        = string
  default     = "test@test.com"
}

variable "smtp_pass" {
  description = "SMTP password"
  type        = string
  sensitive   = true
  default     = "test"
}

variable "smtp_from" {
  description = "SMTP from address"
  type        = string
  default     = "Uly Dala Coffee <test@test.com>"
}
