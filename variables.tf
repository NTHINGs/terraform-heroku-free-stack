variable "config_vars" {
  type        = map
  description = "Environment variables set in the app."
  default     = {}
}

variable "name" {
  type        = string
  description = "Heroku App Name (Should be unique)."
}

variable "region" {
  type        = string
  description = "Heroku region to deploy the app."
  default     = "us"
}

variable "sensitive_config_vars" {
  type        = map
  description = "Sensitive environment variables set in the app. For example db password."
  default     = {}
}

variable "tar_build_path" {
  type        = string
  description = "Relative path to a tar file containing the code."
}
