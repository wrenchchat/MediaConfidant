Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

## Get Setting

Version 4.0.24.14 (latest)
Get Looker Settings Available settings are:
allow_user_timezones custom_welcome_email data_connector_default_enabled dashboard_auto_refresh_restriction dashboard_auto_refresh_minimum_interval extension_framework_enabled extension_load_url_enabled instance_config marketplace_auto_install_enabled marketplace_automation marketplace_terms_accepted marketplace_enabled marketplace_site onboarding_enabled privatelabel_configuration timezone host_url email_domain_allowlist embed_cookieless_v2 embed_enabled embed_config

## Request

GET /setting

| Request    | HTTP Request                    |
|------------|---------------------------------|
| query      | HTTP Query                      |
| add_circle | Expand HTTP Query definition... |

query HTTP Query

add_circle Expand HTTP Query definition...

fields string Requested fields

## Response

| 200: Looker Settings 400: Bad Request…   | 404: Not Found…                     | 422: Validation Error…   |
|------------------------------------------|-------------------------------------|--------------------------|
| (#200:-looker-settings) Datatype         | Description                         |                          |
| Setting  (/looker/docs/refer ence/lookerapi/latest/types/Set ting)                                          |                                     |                          |
| (object)                                 | InstanceConfig  (/looker/docs/refer |                          |
| instance_config lock ence/lookerapi/latest/types/Inst anceConfig) Externally available instance configuration information add_circle Expand InstanceConfig definition... feature_flags lock object Feature flags enabled on the instance license_featureslock object License features enabled on the instance extension_framework_enabled boolean Toggle extension framework on or off (DEPRECATED) Toggle extension load url on or off. Do not use. This is temporary setting                                          |                                     |                          |

extension_load_url_enabled boolean that will eventually become a noop and

| subsequently deleted. (DEPRECATED) Toggle marketplace auto install on or off. Deprecated - do not use.   |         |                                                                     |
|----------------------------------------------------------------------------------------------------------|---------|---------------------------------------------------------------------|
| marketplace_auto_install_enabled                                                                         | boolean | Auto install can now be enabled via marketplace automation settings |
| MarketplaceAut omation  (/looker/docs/ref                                                                |         |                                                                     |
| marketplace_automationlock erence/lookerapi/latest/types/ MarketplaceAuto mation) Marketplace automation settings. add_circle Expand MarketplaceAutomation definition... install_enabled boolean Whether marketplace auto installation is enabled update_looker_enabled boolean Whether marketplace auto update is enabled for looker extensions update_third_party_enabled boolean Whether marketplace auto update is enabled for third party extensions marketplace_enabled boolean Toggle marketplace on or off marketplace_sitelock string Location of Looker marketplace CDN Accept marketplace terms by setting this value to true, or get the current status. Marketplace terms CANNOT be declined marketplace_terms_accepted boolean once accepted. Accepting marketplace terms automatically enables the marketplace. The marketplace can still be disabled after it has been enabled. PrivatelabelCon figuration (/looker/docs/ref privatelabel_configurationlock erence/lookerapi/latest/types/ PrivatelabelConfi guration) Private label configuration add_circle Expand PrivatelabelConfiguration definition... Customer logo image. Expected base64 encoded data logo_file string (write-only) logo_url lock string Logo image url (read-only)                                                                                                          |         |                                                                     |

| Custom favicon image. Expected base64 encoded   |             |                                                                                |
|-------------------------------------------------|-------------|--------------------------------------------------------------------------------|
| favicon_file                                    | string      | data (write-only)                                                              |
| favicon_url                                     | lock string | Favicon image url (read-only)                                                  |
| default_title                                   | string      | Default page title                                                             |
| show_help_menu                                  | boolean     | Boolean to toggle showing help menus                                           |
| show_docs                                       | boolean     | Boolean to toggle showing docs                                                 |
| show_email_sub_options                          | boolean     | Boolean to toggle showing email subscription options.                          |
| allow_looker_mentions                           | boolean     | Boolean to toggle mentions of Looker in emails                                 |
| allow_looker_links                              | boolean     | Boolean to toggle links to Looker in emails                                    |
| custom_welcome_email_advanced                   | boolean     | Allow subject line and email heading customization in customized emails"       |
| setup_mentions                                  | boolean     | Remove the word Looker from appearing in the account setup page                |
| alerts_logo                                     | boolean     | Remove Looker logo from Alerts                                                 |
| alerts_links                                    | boolean     | Remove Looker links from Alerts                                                |
| folders_mentions                                | boolean     | Remove Looker mentions in home folder page when you don't have any items saved |
| CustomWelcom eEmail (/looker/docs/ref           |             |                                                                                |
| custom_welcome_emaillock erence/lookerapi/latest/types/C ustomWelcomeE mail) Custom welcome email configuration add_circle Expand CustomWelcomeEmail definition... enabled boolean If true, custom email content will replace the default body of welcome emails The HTML to use as custom content for welcome content string emails. Script elements and other potentially dangerous markup will be removed. The text to appear in the email subject line. Only available with a whitelabel license and subject string whitelabel_configuration.advanced_custom_welcome_em enabled. The text to appear in the header line of the email body. Only available with a whitelabel license and header string whitelabel_configuration.advanced_custom_welcome_em enabled.                                                 |             |                                                                                |

| onboarding_enabled                                                                    | boolean                          | Toggle onboarding on or off                                                                             |
|---------------------------------------------------------------------------------------|----------------------------------|---------------------------------------------------------------------------------------------------------|
| timezone                                                                              | string                           | Change instance-wide default timezone                                                                   |
| allow_user_timezones                                                                  | boolean                          | Toggle user-specific timezones on or off                                                                |
| data_connector_default_enabled                                                        | boolean                          | Toggle default future connectors on or off                                                              |
| Change the base portion of your Looker instance URL                                   |                                  |                                                                                                         |
| host_url                                                                              | string                           | setting (Write-Only) If warnings are preventing a host URL change, this parameter allows for overriding |
| override_warnings                                                                     | boolean                          | warnings to force update the setting. Does not directly change any Looker settings.                     |
| email_domain_allowlist                                                                | string[]                         | (DEPRECATED) Use embed_config.embed_cookieless_v2 instead. If                                           |
| embed_cookieless_v2                                                                   | boolean                          | embed_config.embed_cookieless_v2 is specified, it overrides this value.                                 |
| True if embedding is enabled                                                          |                                  |                                                                                                         |
| embed_enabled lock boolean                                                            | https://cloud.google.com/looker/docs/r/looker-corefeature-embed, false otherwise                                  |                                                                                                         |
| EmbedConfig  (/looker/docs/refer                                                      |                                  |                                                                                                         |
| embed_config                                                                          | lock ence/lookerapi/latest/types/Em bedConfig) Embed configuration. Requires embedding to be enabled https://cloud.google.com/looker/docs/r/looker-corefeature-embed                                  |                                                                                                         |
| add_circle                                                                            | Expand EmbedConfig definition... |                                                                                                         |
| domain_allowlist                                                                      | string[]                         |                                                                                                         |
| alert_url_allowlist                                                                   | string[]                         | Owner of who defines the alert/schedule                                                                 |
| alert_url_param_owner                                                                 | string                           | params on the base url                                                                                  |
| alert_url_label                                                                       | string                           | Label for the alert/schedule url                                                                        |
| sso_auth_enabled                                                                      | boolean                          | Is SSO embedding enabled for this Looker                                                                |
| embed_cookieless_v2                                                                   | boolean                          | Is Cookieless embedding enabled for this Looker                                                         |
| embed_content_navigation                                                              | boolean                          | Is embed content navigation enabled for this looker                                                     |
| embed_content_management                                                              | boolean                          | Is embed content management enabled for this Looker                                                     |
| When true, prohibits the use of Looker login pages in non-Looker iframes. When false, |                                  |                                                                                                         |
| strict_sameorigin_for_login                                                           | boolean                          |                                                                                                         |

Looker login pages may be used in non-

| Looker hosted iframes.                  |                            |                                                                                                 |
|-----------------------------------------|----------------------------|-------------------------------------------------------------------------------------------------|
| look_filters                            | boolean                    | When true, filters are enabled on embedded Looks                                                |
| hide_look_navigation                    | boolean                    | When true, removes navigation to Looks from embedded dashboards and explores.                   |
| login_notification_enabledlock boolean  | Login notification enabled |                                                                                                 |
| login_notification_textlock string      | Login notification text    |                                                                                                 |
| dashboard_auto_refresh_restriction      | boolean                    | Toggle Dashboard Auto Refresh restriction Minimum time interval for dashboard element automatic |
| dashboard_auto_refresh_minimum_interval | string                     | refresh. Examples: (30 seconds, 1 minute)                                                       |

## Examples

Python

 (\#python)
https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/simple_sample.py
 (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/simple_sample.py\#L4)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.