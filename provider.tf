data "local_file" "config" {
  filename = "clientauth.json"
}

locals {
  config = jsondecode(data.local_file.config.content)
}


terraform {
  required_providers {
    jamfpro = {
      source  = "terraform.local/local/jamfpro"
      version = "0.1.0"
    }
  }
}

provider "jamfpro" {
  instance_name = local.config.instanceName
  client_id     = local.config.clientId
  client_secret = local.config.clientSecret
  log_level     = "debug"
  log_output_format = "console"
  log_console_separator = "-"
  hide_sensitive_data = true
  max_retry_attempts = 2
  enable_dynamic_rate_limiting = false
  max_concurrent_requests = 1
  enable_cookie_jar = true
  custom_timeout = 10
  # custom_cookies = {
  #   "jpro-ingress": "497ab3aaa537e4fe"
  # }
}







