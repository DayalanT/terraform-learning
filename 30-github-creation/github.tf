terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = "var.github_token"
}

resource "github_repository" "terraform-learning" {
  name        = "terraform-learning"
  description = "Terraform Learning-for-certificate"
  visibility  = "public"
}

output "repository_url" {
  value = github_repository.terraform-learning.html_url
}

