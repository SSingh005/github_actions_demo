#The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "version1_academy_project"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "Terraform_Project"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
#Test