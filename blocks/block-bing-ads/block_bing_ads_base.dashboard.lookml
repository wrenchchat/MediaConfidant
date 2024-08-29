- dashboard: block_bing_ads_base
  title: Block Bing Ads Base
  extension: required
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  filters:
    - name: Period
      title: Period
      type: field_filter
      default_value: 28 day
      allow_multiple_values: false
      required: true
      model: block_bing_ads
      explore: bing_ads_ad_impressions
      listens_to_filters: []
      field: fact.period
    - name: Period Latest
      title: Period Latest
      type: field_filter
      default_value: 'Yes'
      allow_multiple_values: false
      required: true
      model: block_bing_ads
      explore: bing_ads_ad_impressions
      listens_to_filters: []
      field: fact.date_period_latest
    - name: Campaign
      title: Campaign
      type: field_filter
      default_value: ''
      allow_multiple_values: true
      required: false
      model: block_bing_ads
      explore: bing_ads_ad_impressions
      listens_to_filters:
      - Period
      - Period Latest
      - Account
      field: fact.campaign_name
    - name: Account
      title: Account
      type: field_filter
      default_value: ''
      allow_multiple_values: true
      required: false
      model: block_bing_ads
      explore: bing_ads_ad_impressions
      listens_to_filters:
      - Period
      - Period Latest
      field: fact.account_name
    - name: Ad Group
      title: Ad Group
      type: field_filter
      default_value: ''
      allow_multiple_values: true
      required: false
      model: block_bing_ads
      explore: bing_ads_ad_impressions
      listens_to_filters:
      - Period
      - Period Latest
      - Campaign
      - Account
      field: fact.ad_group_name
