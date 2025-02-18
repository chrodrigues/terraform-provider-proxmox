terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.59.1" # x-release-please-version
    }
  }
}

provider "proxmox" {
  endpoint  = var.virtual_environment_endpoint
  api_token = var.virtual_environment_token
  ssh {
    agent    = true
    username = "terraform"
  }
}
