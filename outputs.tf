output "organization_teams_lookup_id" {
  description = "Map of id values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.id }
}
output "organization_teams_lookup_results_per_page" {
  description = "Map of results_per_page values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.results_per_page }
}
output "organization_teams_lookup_root_teams_only" {
  description = "Map of root_teams_only values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.root_teams_only }
}
output "organization_teams_lookup_summary_only" {
  description = "Map of summary_only values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.summary_only }
}
output "organization_teams_lookup_teams" {
  description = "Map of teams values across all organization_teams_lookup, keyed the same as var.organization_teams_lookup"
  value       = { for k, v in data.github_organization_teams.organization_teams_lookup : k => v.teams }
}

