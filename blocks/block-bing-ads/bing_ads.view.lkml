include: "//app-marketing-bing-ads-adapter/*.view"
include: "//app-marketing-bing-ads/*.view"
include: "//app-marketing-common/*.view"
include: "//@{CONFIG_PROJECT_NAME}/*.view"

view: ad_metrics_base {
  extends: [ad_metrics_base_config]
}

view: bing_ad_metrics_base {
  extends: [bing_ad_metrics_base_config]
}

view: bing_ad_impressions {
  extends: [bing_ad_impressions_config]
}

view: bing_ad_impressions_campaign {
  extends: [bing_ad_impressions_campaign_config]
}

view: bing_ad_impressions_ad_group {
  extends: [bing_ad_impressions_ad_group_config]
}

view: bing_ad_impressions_keyword {
  extends: [bing_ad_impressions_keyword_config]
}

view: bing_ad_impressions_ad {
  extends: [bing_ad_impressions_ad_config]
}

view: bing_period_comparison {
  extends: [bing_period_comparison_config]
}
