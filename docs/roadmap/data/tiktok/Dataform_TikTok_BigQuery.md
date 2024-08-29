# Dataform Transfomation for TikTok to BigQuery:

## 1. Ad Data
+ Table Name: ad
+ Dataform Transformation:
+ Description: Contains details about individual ads, such as ad IDs, names, status, and creative details.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  ad_id,
  ad_name,
  ad_text,
  ad_status,
  creative_type,
  objective_type,
  campaign_id,
  adgroup_id,
  created_time,
  updated_time
from
  raw_ad_data
 ```

## 2. Ad Report Data (Daily)
+ Table Name: ad_report_daily
+ Dataform Transformation: ad_report_daily.sqlx
+ Description: Stores daily performance metrics for ads, such as impressions, clicks, conversions, and spend.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  ad_id,
  date,
  sum(impressions) as total_impressions,
  sum(clicks) as total_clicks,
  sum(conversions) as total_conversions,
  sum(spend) as total_spend
from
  raw_ad_report_data
group by
  ad_id, date
  ```

## 3. Ad Group Data
+ Table Name: adgroup
+ Dataform Transformation: adgroup.sqlx
+ Description: Contains information about ad groups, such as targeting options and bidding strategies.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  adgroup_id,
  adgroup_name,
  adgroup_status,
  targeting_type,
  bid_strategy,
  budget,
  start_time,
  end_time,
  campaign_id
from
  raw_adgroup_data
  ```

## 4. Ad Group Report Data (Daily)
+ Table Name: adgroup_report_daily
+ Dataform Transformation: adgroup_report_daily.sqlx
+ Description: Similar to the ad report, but at the ad group level, storing daily performance metrics.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  adgroup_id,
  date,
  sum(impressions) as total_impressions,
  sum(clicks) as total_clicks,
  sum(conversions) as total_conversions,
  sum(spend) as total_spend
from
  raw_adgroup_report_data
group by
  adgroup_id, date
```

## 5. Campaign Data
+ Table Name: campaign
+ Dataform Transformation: campaign.sqlx
+ Description: Contains information about campaigns, such as campaign IDs, names, budgets, and objectives.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  campaign_id,
  campaign_name,
  objective,
  budget,
  start_time,
  end_time,
  status
from
  raw_campaign_data
```

## 6. Campaign Report Data (Daily)
+ Table Name: campaign_report_daily
+ Dataform Transformation: config {
  type: "table",
  schema: "tiktok"
}
select
  campaign_id,
  date,
  sum(impressions) as total_impressions,
  sum(clicks) as total_clicks,
  sum(conversions) as total_conversions,
  sum(spend) as total_spend
from
  raw_campaign_report_data
group by
  campaign_id, date
+ Description: Stores daily performance metrics for campaigns, similar to the ad and ad group reports.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  campaign_id,
  date,
  sum(impressions) as total_impressions,
  sum(clicks) as total_clicks,
  sum(conversions) as total_conversions,
  sum(spend) as total_spend
from
  raw_campaign_report_data
group by
  campaign_id, date
```

## 7. Creative Data
+ Table Name: ad_creatives
+ Dataform Transformation: ad_creatives.sqlx
+ Description: Contains information about the creatives used in ads, such as images and videos, including their status and performance.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  creative_id,
  ad_id,
  creative_type,
  creative_status,
  creative_url,
  creative_dimensions,
  creative_duration,
  created_time,
  updated_time
from
  raw_ad_creative_data
```

## 8. Event Tracking Data
+ Table Name: event_tracking
+ Dataform Transformation: event_tracking.sqlx
+ Description: Stores event tracking data (e.g., pixel data), including conversions and interactions.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  event_id,
  ad_id,
  adgroup_id,
  campaign_id,
  event_type,
  event_value,
  event_time,
  conversions
from
  raw_event_tracking_data
```

## 9. Advertiser Data
+ Table Name: advertiser
+ Dataform Transformation: advertiser.sqlx
+ Description: Contains data related to the advertiser accounts, such as IDs, names, and account-level settings.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  advertiser_id,
  advertiser_name,
  advertiser_status,
  created_time,
  updated_time,
  total_spend
from
  raw_advertiser_data
```

## 10. Audience Data (Optional)
+ Table Name: audience
+ Dataform Transformation: audience.sqlx (Optional)
+ Description: If you need to handle custom audience data, this table will store audience segments used in targeting.
```
config {
  type: "table",
  schema: "tiktok"
}
select
  audience_id,
  audience_name,
  audience_size,
  created_time,
  updated_time
from
  raw_audience_data
```

# How Dataform Fits into the Pipeline:

## 1. Ingest Data via API: 
Use the Python SDK, as demonstrated earlier, to fetch the TikTok API data and load it into raw staging tables in BigQuery.

## 2. Transform Data Using Dataform:
+ Define Datasets: Use SQL or SQLX files in Dataform to define your transformation logic.
+ Apply Business Logic: Transform the raw TikTok data into structured datasets, applying any necessary calculations, aggregations, or business logic.
+ Create Views or Tables: Use Dataform to create the final views or tables that will be used by Looker.

## 3. Manage Dependencies: 
Dataform allows you to manage dependencies between datasets, ensuring that transformations occur in the correct order.

## 4. Deploy and Schedule: 
Dataform can be integrated with CI/CD pipelines, and you can schedule transformations to run daily (or at other intervals) to keep your data fresh.

## Example Workflow Using Dataform:

### 1. Stage Raw Data in BigQuery:
+ Use the Python SDK to fetch and insert data into raw tables in BigQuery (e.g., raw_ad_data, raw_campaign_data).

### 2. Create a Dataform Project:
+ Define your Dataform project structure, including models/, includes/, and tests/ directories.

### 3. Write Transformation SQLX Files

### 4. Run Dataform:
+ Deploy the transformations using Dataform CLI or UI. Dataform will handle the dependencies and ensure the transformations run in the correct order.

### 5. Integrate with Looker:
+ Point Looker to the transformed tables/views in BigQuery, ensuring the data is correctly mapped to your LookML models and views.

### Benefits of Using Dataform:
+ Version Control: Keep your transformation logic in Git for better collaboration and version control.
+ Dependency Management: Automatically manage dependencies between datasets, ensuring data integrity.
+ Scalability: Handle large-scale transformations efficiently in BigQuery.

### Example Directory Structure:
dataform/
├── includes/
├── models/
│   ├── ad_report_daily.sqlx
│   ├── campaign_report.sqlx
│   └── transformations/
├── tests/
└── dataform.json

