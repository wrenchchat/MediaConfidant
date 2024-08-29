# TikTok API for BQ

## Matching APIs to LookML Tables and Fields:

### 1. AccountApi - advertiser_update:
**+ LookML Match:** advertiser
**+ Reasoning:**  The advertiser_update API is related to updating advertiser accounts, which aligns with the advertiser table in the LookML files.

### 2. AdApi - ad_create, ad_get, ad_status_update, ad_update:
**+ LookML Match:** ad, ad_report_daily, ad_history
**+ Reasoning:**  These APIs are related to managing ads, which correspond to tables like ad (for ad details), ad_report_daily (for daily ad reports), and ad_history (for historical ad data).

### 3. AdAcoApi - ad_aco_create, ad_aco_get, ad_aco_material_status_update, ad_aco_update:
**+ LookML Match:** ad, adgroup
**+ Reasoning:**  The ACO (Automated Creative Optimization) APIs are related to ads and ad groups, matching with the ad and adgroup tables in LookML.

### 4. AdgroupApi - adgroup_create, adgroup_get, adgroup_status_update, adgroup_update:
**+ LookML Match:** adgroup, adgroup_history, adgroup_report_daily 
**+ Reasoning:** These APIs deal with ad groups, matching with the adgroup, adgroup_history, and adgroup_report_daily tables.

### 5. AudienceApi - dmp_custom_audience_list:
**+ LookML Match:** No direct match, but potentially custom audiences data can be inferred from fields related to targeting and segmentation in adgroup or campaign.
**+ Reasoning:** This API retrieves custom audiences, which may not have a direct table match but could be related to targeting fields in LookML.

### 6. CampaignCreationApi - campaign_create, campaign_get, campaign_status_update, campaign_update:
**+ LookML Match:** campaign, campaign_history, campaign_report_daily tables. 
**+ Reasoning:** These APIs relate to campaign management, matching with the campaign, campaign_history, and campaign_report_daily tables.

### 7. FileApi - ad_image_info, ad_image_upload, ad_video_info, ad_video_search, ad_video_upload:
**+ LookML Match:** ad, ad_report_daily (for creatives)
**+ Reasoning:**  These APIs are related to managing ad images and videos, which may be represented in LookML through fields in the ad and ad_report_daily tables that track creative performance.

### 8. EventCallbackApi - pixel_batch, pixel_track:
**+ LookML Match:** Potentially related to fields in ad_report_daily and other performance-related tables.
**+ Reasoning:** These APIs are for tracking events via pixels, which may map to performance metrics in the ad_report_daily table.

### 9. MeasurementApi - app_list, app_optimization_event:
**+ LookML Match:** No direct match, but potentially related to performance metrics.
**+ Reasoning:** These APIs deal with app performance, which may indirectly relate to fields tracking ad performance.

### 10. ReportingApi - report_integrated_get:
**+ LookML Match:** ad_report_daily, campaign_report_**daily
**+ Reasoning:** This API generates reports, which aligns with the report tables like ad_report_daily and campaign_report_daily in LookML.

## Summary:

**+ Ad Management:** The ad, adgroup, and related tables (like ad_report_daily, ad_history, etc.) correspond closely with APIs related to ad and ad group creation, updates, and status management.
**+ Campaign Management:** The campaign, campaign_history, and campaign_report_daily tables align with campaign-related APIs.
**+ Creative Management:** APIs related to ad creatives (images, videos) correspond with fields in the ad and ad_report_daily tables.
**+ Event Tracking:** Event tracking APIs (e.g., pixel-based tracking) might relate to performance metrics in the ad_report_daily table.

### Import necessary modules from the TikTok Business API SDK
from business_api_client import ApiClient, Configuration
from business_api_client.rest import ApiException
from pprint import pprint

### Configure API client
configuration = Configuration()
configuration.access_token = 'your_access_token'
api_client = ApiClient(configuration)

### Create instances of the relevant API classes
ad_api = business_api_client.AdApi(api_client)
adgroup_api = business_api_client.AdgroupApi(api_client)
campaign_api = business_api_client.CampaignCreationApi(api_client)
file_api = business_api_client.FileApi(api_client)
reporting_api = business_api_client.ReportingApi(api_client)

# Example: Fetch daily ad data and load into BigQuery and Corresponding View: ad_report_daily

**try:**

    # Fetch daily ad report data
    daily_ad_report = reporting_api.report_integrated_get(
        access_token='your_access_token',
        filtering={
            'report_type': 'DAILY', 
            'metrics': ['impressions', 'clicks', 'conversions', 'spend']
        }
    )
    pprint(daily_ad_report)
    # Insert data into BigQuery (pseudo-code)
    # bq_client.insert_table('your_project.your_dataset.ad_report_daily', daily_ad_report)
	except ApiException as e:
    print("Exception when fetching daily ad report: %s\n" % e)

# Example: Fetch ad data (e.g., creatives, status) and load into BigQuery

# Corresponding View: ad

**try:**

    # Fetch ad data
    ads_data = ad_api.ad_get(access_token='your_access_token')
    pprint(ads_data)
    # Insert data into BigQuery (pseudo-code)
    # bq_client.insert_table('your_project.your_dataset.ad', ads_data)
	except ApiException as e:
    print("Exception when fetching ad data: %s\n" % e)

# Example: Fetch ad group data and load into BigQuery
# Corresponding View: adgroup, adgroup_report_daily

**try:**

    # Fetch ad group data
    adgroup_data = adgroup_api.adgroup_get(access_token='your_access_token')
    pprint(adgroup_data)
    # Insert data into BigQuery (pseudo-code)
    # bq_client.insert_table('your_project.your_dataset.adgroup', adgroup_data)
	except ApiException as e:
    print("Exception when fetching ad group data: %s\n" % e)

# Example: Fetch campaign data and load into BigQuery
# Corresponding View: campaign, campaign_report_daily

**try:**

    # Fetch campaign data
    campaign_data = campaign_api.campaign_get(access_token='your_access_token')
    pprint(campaign_data)
    # Insert data into BigQuery (pseudo-code)
    # bq_client.insert_table('your_project.your_dataset.campaign', campaign_data)
	except ApiException as e:
    print("Exception when fetching campaign data: %s\n" % e)

# Example: Fetch ad creative data (images, videos) and load into BigQuery
# Corresponding View: ad (creative-related fields)

**try:**

    # Fetch ad creative data
    ad_creatives = file_api.ad_image_info(access_token='your_access_token')
    pprint(ad_creatives)
    # Insert data into BigQuery (pseudo-code)
    # bq_client.insert_table('your_project.your_dataset.ad_creatives', ad_creatives)
	except ApiException as e:
    print("Exception when fetching ad creative data: %s\n" % e)

# Example: Fetch event tracking data and load into BigQuery
# Corresponding View: ad_report_daily (for performance metrics)

**try:**

    # Fetch event tracking data (e.g., pixel-based)
    event_data = reporting_api.report_integrated_get(
        access_token='your_access_token',
        filtering={
            'report_type': 'EVENT_TRACKING',
            'metrics': ['conversions', 'clicks', 'spend']
        }
    )
    pprint(event_data)
    # Insert data into BigQuery (pseudo-code)
    # bq_client.insert_table('your_project.your_dataset.event_tracking', event_data)
	except ApiException as e:
    print("Exception when fetching event tracking data: %s\n" % e)

## 1. report_integrated_get for Daily Reports: 
This fetches daily metrics like impressions, clicks, conversions, and spend. It’s matched with the ad_report_daily and similar views in LookML.

## 2. ad_get for Ad Data: 
This retrieves information about ads, including status and creative details. It’s matched with the ad and ad_history views.

## 3. adgroup_get for Ad Groups: 
This fetches ad group data, which matches with adgroup and adgroup_report_daily.

## 4. campaign_get for Campaigns: 
This fetches campaign data and is matched with campaign, campaign_report_daily, and related views.

## 5. ad_image_info for Creatives: 
This retrieves ad creatives (images, videos), matched with fields in the ad view that track creative performance.

## 6. report_integrated_get for Event Tracking: 
This fetches event tracking data (e.g., pixel-based), matched with performance metrics in ad_report_daily.