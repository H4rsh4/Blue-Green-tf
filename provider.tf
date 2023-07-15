provider "aws" {
  region = "${var.region}"
  
}

terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
