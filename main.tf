data "cloudflare_cloudforce_one_request" "cloudforce_one_request_lookup" {
  for_each = var.cloudforce_one_request_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  request_id = each.value.request_id
}

