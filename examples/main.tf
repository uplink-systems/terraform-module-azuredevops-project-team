####################################################################################################
#   main.tf                                                                                        #
####################################################################################################

module "team_example" {
  source    = "github.com/uplink-systems/terraform-module-azuredevops-project-team"
  team                = {
    name                = "example-team"
    project_id          = module.azuredevops_project.example.project_id
  }
  team_administrators = {
    name                = ["Project Administrators"]
    mode                = "overwrite"
  }
  team_members        = {
    name                = ["Readers"]
    mode                = "add"
  }
}
