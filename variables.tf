variable "cloudforce_one_request_lookup" {
  description = <<EOT
Map of cloudforce_one_request_lookup, attributes below
Optional:
    - account_id
    - filter
    - request_id
EOT

  type = map(object({
    account_id = optional(string)
    filter = optional(object({
      completed_after  = optional(string)
      completed_before = optional(string)
      created_after    = optional(string)
      created_before   = optional(string)
      page             = number
      per_page         = number
      request_type     = optional(string)
      sort_by          = optional(string)
      sort_order       = optional(string)
      status           = optional(string)
    }))
    request_id = optional(string)
  }))
}

