- dashboard: bing_ads_overview
  title: Bing Ads - Overview
  extends: block_bing_ads_base
  elements:
  - title: Spend
    name: Spend
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: single_value
    fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_change
      label: Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    series_types: {}
    hidden_fields:
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - total_conversion_change
    - cost_per_conversion_percent_change
    - cost_per_click_percent_change
    - conversion_rate_percent_change
    - click_through_rate_percent_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 0
    width: 9
    height: 3
  - title: Cost Per Conversion
    name: Cost Per Conversion
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: single_value
    fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_change
      label: Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Per Conversion
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    comparison_label: ''
    series_types: {}
    hidden_fields:
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - cost_per_click_percent_change
    - conversion_rate_percent_change
    - click_through_rate_percent_change
    - fact.total_cost
    - cost_change
    - fact.total_conversions
    - total_conversion_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 14
    width: 5
    height: 3
  - title: Conversions
    name: Conversions
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: single_value
    fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_change
      label: Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    series_types: {}
    hidden_fields:
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - cost_per_conversion_percent_change
    - cost_per_click_percent_change
    - conversion_rate_percent_change
    - click_through_rate_percent_change
    - fact.total_cost
    - cost_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 9
    width: 5
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: single_value
    fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_change
      label: Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    series_types: {}
    hidden_fields:
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - last_fact.average_cost_per_click
    - click_through_rate_percent_change
    - fact.total_cost
    - cost_change
    - fact.total_conversions
    - total_conversion_change
    - fact.average_cost_per_conversion
    - cost_per_conversion_percent_change
    - fact.average_cost_per_click
    - cost_per_click_percent_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 19
    width: 5
    height: 3
  - title: Conversion Trends
    name: Conversion Trends
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: looker_line
    fields:
    - fact.date_date
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.total_conversions
    fill_fields:
    - fact.date_date
    filters: {}
    sorts:
    - fact.date_date desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    hidden_series:
    - fact.average_conversion_rate
    - fact.total_conversions
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    - label:
      orientation: left
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 3
    col: 9
    width: 15
    height: 10
  - title: Spend To Date
    name: Spend To Date
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: looker_area
    fields:
    - fact.cumulative_spend
    - last_fact.cumulative_spend
    - fact.date_day_of_period
    filters: {}
    sorts:
    - fact.date_day_of_period
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Account: account.account_name
      Campaign: campaign.campaign_name
      Ad Group: ad_group.ad_group_name
    row: 3
    col: 0
    width: 9
    height: 10
  - title: Funnel
    name: Funnel
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: looker_column
    fields:
    - fact.total_impressions
    - fact.total_clicks
    - fact.total_conversions
    - fact.date_period
    filters: {}
    sorts:
    - fact.date_period desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#d06180"
    - "#a4a6a9"
    - "#7869df"
    - "#6e98f9"
    - "#dc9d4f"
    - "#4bb86a"
    - "#8ac8ca"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.total_impressions
        name: Impressions
        axisId: fact.total_impressions
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: log
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 13
    col: 0
    width: 9
    height: 6
  - title: Click Rate
    name: Click Rate
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: single_value
    fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_change
      label: Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Click Rate
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    series_types: {}
    hidden_fields:
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - last_fact.average_conversion_rate
    - last_fact.average_click_rate
    - last_fact.average_cost_per_click
    - fact.total_cost
    - cost_change
    - fact.total_conversions
    - total_conversion_change
    - fact.average_cost_per_conversion
    - cost_per_conversion_percent_change
    - fact.average_cost_per_click
    - cost_per_click_percent_change
    - fact.average_conversion_rate
    - conversion_rate_percent_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 13
    col: 9
    width: 4
    height: 3
  - title: Click Trend
    name: Click Trend
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: looker_line
    fields:
    - fact.average_cost_per_click
    - fact.average_click_rate
    - fact.total_clicks
    - fact.date_date
    fill_fields:
    - fact.date_date
    filters: {}
    sorts:
    - fact.date_date desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#d06180"
    - "#a4a6a9"
    - "#7869df"
    - "#6e98f9"
    - "#dc9d4f"
    - "#4bb86a"
    - "#8ac8ca"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    hidden_series:
    - fact.average_click_rate
    - fact.total_clicks
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 13
    col: 13
    width: 11
    height: 6
  - title: Campaigns
    name: Campaigns
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: table
    fields:
    - fact.weighted_average_position
    - fact.total_cost
    - campaign.campaign_name
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    filters: {}
    sorts:
    - fact.total_cost desc
    limit: 10
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    colors:
    - "#d06180"
    - "#a4a6a9"
    - "#7869df"
    - "#6e98f9"
    - "#dc9d4f"
    - "#4bb86a"
    - "#8ac8ca"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_colors: {}
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.total_impressions
        name: Impressions
        axisId: fact.total_impressions
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: log
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 19
    col: 0
    width: 24
    height: 6
  - title: Cost Per Click
    name: Cost Per Click
    model: block_bing_ads
    explore: bing_ad_group_date_fact
    type: single_value
    fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_change
      label: Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Per Click
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    comparison_label: ''
    series_types: {}
    hidden_fields:
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - last_fact.average_cost_per_click
    - conversion_rate_percent_change
    - click_through_rate_percent_change
    - fact.total_cost
    - cost_change
    - fact.total_conversions
    - total_conversion_change
    - fact.average_cost_per_conversion
    - cost_per_conversion_percent_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 16
    col: 9
    width: 4
    height: 3
