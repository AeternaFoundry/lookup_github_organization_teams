output "organization_teams_lookup_id" {
  description = "Map of id values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_teams_lookup_results_per_page" {
  description = "Map of results_per_page values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.results_per_page if v.results_per_page != null }
}
output "organization_teams_lookup_root_teams_only" {
  description = "Map of root_teams_only values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.root_teams_only if v.root_teams_only != null }
}
output "organization_teams_lookup_summary_only" {
  description = "Map of summary_only values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.summary_only if v.summary_only != null }
}
output "organization_teams_lookup_teams" {
  description = "Map of teams values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.teams if v.teams != null && length(v.teams) > 0 }
}

