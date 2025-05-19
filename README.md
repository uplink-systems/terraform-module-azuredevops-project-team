
## Module 'project_team'

### Description

The module **project_team** manages Azure DevOps project teams. This includes the team itself as well as dependant repository resources (e.g. team administrators or team members).  

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azuredevops"></a> [microsoft\/azuredevops](#requirement\_azuredevops) | ~> 1.4 |

### Resources

| Name | Type |
|------|------|
| [azuredevops_team.team](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/team) | resource |
| [azuredevops_team_administrators.team_administrators](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/team_administrators) | resource |
| [azuredevops_team_members.team_members](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/team_members) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_team"></a> [team](#input\_team) | team main variable with resource attributes | <pre>type        = object({<br>  project_id          = string<br>  name                = string<br>  description         = optional(string, null)<br>})</pre> | none | yes |
| <a name="input_team_administrators"></a> [team\_administrators](#input\_team\_administrators) | team_administrators main variable with resource attributes | <pre>type = object({<br>  name = optional(list(string), ["Project Administrators"])<br>  mode = optional(string, "add")<br>})<br></pre> | <pre>type = object({<br>  name = ["Project Administrators"]<br>  mode = "add"<br>})</pre> | no |
| <a name="input_team_members"></a> [team\_members](#input\_team\_members) | team_members main variable with resource attributes | <pre>type = object({<br>  name = optional(list(string), ["Readers"])<br>  mode = optional(string, "add")<br>})<br></pre> | <pre>type = object({<br>  name = ["Readers"]<br>  mode = "add"<br>})</pre> | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_team"></a> [team](#output\_team) | list of all exported attributes values from the team resource |
| <a name="output_team_administrators"></a> [team\_administrators](#output\_team\_administrators) | list of all exported attributes values from the team_administrators resource |
| <a name="output_team_members"></a> [team\_members](#output\_team\_members) | list of all exported attributes values from the team_members resource |

### Known Issues

Known issues are documented with the GitHub repo's issues functionality. Please filter the issues by **Types** and select **Known Issue** to get the appropriate issues and read the results carefully before using the module to avoid negative impacts on your infrastructure.  
  
<a name="known_issues"></a> [list of Known Issues](https://github.com/uplink-systems/terraform-module-azuredevops-project-team/issues?q=type%3A%22known%20issue%22)
