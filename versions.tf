terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.7.0"
    }
  }
}

provider "github" {}