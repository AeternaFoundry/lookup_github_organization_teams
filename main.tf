data "github_organization_teams" "organization_teams_lookup" {
  for_each = var.organization_teams_lookup

  results_per_page = each.value.results_per_page
  root_teams_only  = each.value.root_teams_only
  summary_only     = each.value.summary_only
}

