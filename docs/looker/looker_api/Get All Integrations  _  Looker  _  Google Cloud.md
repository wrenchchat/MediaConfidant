Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Integrations

Version 4.0.24.14 (latest)
Get information about all Integrations.

Request GET /integrations

| Datatype           | Description                     |                               |
|--------------------|---------------------------------|-------------------------------|
| Request            | HTTP Request                    |                               |
| query              | HTTP Query                      |                               |
| add_circle         | Expand HTTP Query definition... |                               |
| fields             | string                          | Requested fields.             |
| integration_hub_id | string                          | Filter to a specific provider |

Response

| 200: Integration 400: Bad Request…   | 404: Not Found…            | 429: Too Many Requests…                                       |
|--------------------------------------|----------------------------|---------------------------------------------------------------|
| (#200:-integration)                  | Datatype                   | Description                                                   |
| Integration  (/looker/docs/refer ence/lookerapi/latest/types/Int egration) []                                      |                            |                                                               |
| (array) can                          | lock object                | Operations the current user is able to perform on this object |
| id                                   | lock string                | ID of the integration.                                        |
| integration_hub_idlock string        | ID of the integration hub. |                                                               |

| label                               | lock string                           | Label for the integration.                                                                                                                                                                                          |
|-------------------------------------|---------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| description                         | lock string                           | Description of the integration.                                                                                                                                                                                     |
| enabled                             | boolean                               | Whether the integration is available to users.                                                                                                                                                                      |
| IntegrationParam  (/looker/docs/refer ence/lookerapi/latest/types/Int egrationParam) []                                     |                                       |                                                                                                                                                                                                                     |
| add_circle                          | Expand IntegrationParam definition... |                                                                                                                                                                                                                     |
| name                                | string                                | Name of the parameter.                                                                                                                                                                                              |
| label                               | lock string                           | Label of the parameter.                                                                                                                                                                                             |
| description                         | lock string                           | Short description of the parameter.                                                                                                                                                                                 |
| params required                     | lock boolean                          | Whether the parameter is required to be set to use the destination. If unspecified, this defaults to false.                                                                                                         |
| has_value                           | lock boolean                          | Whether the parameter has a value set. The current value of the parameter. Always null if the                                                                                                                       |
| value                               | string                                | value is sensitive. When writing, null values will be ignored. Set the value to an empty string to clear it. When present, the param's value comes from this                                                        |
| user_attribute_name                 | string                                | user attribute instead of the 'value' parameter. Set to null to use the 'value'.                                                                                                                                    |
| sensitive                           | lock boolean                          | Whether the parameter contains sensitive data like API credentials. If unspecified, this defaults to true. When true, this parameter must be assigned to a user attribute in the admin panel (instead of a constant |
| per_user                            | lock boolean                          | value), and that value may be updated by the user as part of the integration flow. When present, the param represents the oauth url                                                                                 |
| delegate_oauth_urllock string       | the user will be taken to.            |                                                                                                                                                                                                                     |
| supported_formats                   | string[]                              |                                                                                                                                                                                                                     |
| supported_action_types              | string[]                              |                                                                                                                                                                                                                     |
| supported_formattings               | string[]                              |                                                                                                                                                                                                                     |
| supported_visualization_formattings | string[]                              |                                                                                                                                                                                                                     |
| supported_download_settings         | string[]                              |                                                                                                                                                                                                                     |
| icon_url                            | lock string                           | URL to an icon for the integration.                                                                                                                                                                                 |
| uses_oauth                          | lock boolean                          | Whether the integration uses oauth.                                                                                                                                                                                 |
| IntegrationRequir edField           |                                       |                                                                                                                                                                                                                     |

required_fields

 (/looker/docs/refer

ence/lookerapi/latest/types/Int

egrationRequiredFiel

d)

[]

add_circle Expand IntegrationRequiredField definition...

tag lock string Matches a field that has this tag.

any_tag string[] all_tags string[]

| add_circle                       | Expand IntegrationRequiredField definition...                       |                                                                                                                                                 |
|----------------------------------|---------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| tag                              | lock string                                                         | Matches a field that has this tag.                                                                                                              |
| any_tag                          | string[]                                                            |                                                                                                                                                 |
| all_tags                         | string[]                                                            |                                                                                                                                                 |
| privacy_link                     | lock string                                                         | Link to privacy policy for destination Whether the integration uses delegate oauth, which allows federation between an integration installation |
| delegate_oauth lock boolean      | scope specific entity (like org, group, and team, etc.) and Looker. |                                                                                                                                                 |
| installed_delegate_oauth_targets | string[]                                                            |                                                                                                                                                 |

## Examples

```
Ruby
    
   (#ruby)
    Kotlin (#kotlin)Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/test_integrations.rb (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/test_integrations.rb\#L10)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.