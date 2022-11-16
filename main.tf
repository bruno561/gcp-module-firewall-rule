module "firewall_rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  project_id   = var.project_id
  network_name = var.vpc_name

  rules = [{
    name                    = var.rule_name
    description             = var.description_rule
    direction               = var.direct
    priority                = null
    ranges                  = var.range
    source_tags             = null
    source_service_accounts = null
    target_tags             = var.target_tag
    target_service_accounts = null
    allow = var.allow_values

    deny = []
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  }]
}