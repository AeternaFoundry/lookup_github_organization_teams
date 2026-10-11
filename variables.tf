variable "organization_teams_lookup" {
  description = <<EOT
Map of organization_teams_lookup, attributes below
Optional:
    - results_per_page
    - root_teams_only
    - summary_only
EOT

  type = map(object({
    results_per_page = optional(number)
    root_teams_only  = optional(bool)
    summary_only     = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.organization_teams_lookup : (
        v.results_per_page == null || (v.results_per_page >= 0 && v.results_per_page <= 100)
      )
    ])
    error_message = "must be between 0 and 100"
  }
}

