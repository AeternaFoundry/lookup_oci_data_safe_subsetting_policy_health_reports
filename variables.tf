variable "data_safe_subsetting_policy_health_reports_lookup" {
  description = <<EOT
Map of data_safe_subsetting_policy_health_reports_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - display_name
    - state
    - subsetting_policy_health_report_id
    - subsetting_policy_id
    - target_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                     = string
    access_level                       = optional(string)
    compartment_id_in_subtree          = optional(bool)
    display_name                       = optional(string)
    state                              = optional(string)
    subsetting_policy_health_report_id = optional(string)
    subsetting_policy_id               = optional(string)
    target_id                          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

