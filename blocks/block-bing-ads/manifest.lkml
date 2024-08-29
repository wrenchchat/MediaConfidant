project_name: "block-bing-ads"

# LookML to map the ETL and data warehouse for Bing Ads
remote_dependency: app-marketing-bing-ads {
  url: "git://github.com/looker/app-marketing-bing-ads"
  ref: "e64a830911a872659e380e7bf8ed51df437b6c39"
}

remote_dependency: app-marketing-bing-ads-adapter {
  url: "git://github.com/looker/app-marketing-bing-ads-fivetran-bigquery"
  ref: "c3e4b40dc43e95dc0bb9358eb8361d7647d210bf"
}

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "d0405a8ef76925449d722b11103f419b3d40e37b"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: BING_SCHEMA {
    value: "@{BING_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-bing-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "looker_application"
  export: override_required
}

constant: BING_SCHEMA {
  value: "bings_ads_for_looker"
  export: override_required
}
