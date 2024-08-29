Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Integration Hubs

Version 4.0.24.14 (latest)
Get information about all Integration Hubs.

Request GET /integration_hubs

| Datatype   | Description                     |                   |
|------------|---------------------------------|-------------------|
| Request    | HTTP Request                    |                   |
| query      | HTTP Query                      |                   |
| add_circle | Expand HTTP Query definition... |                   |
| fields     | string                          | Requested fields. |

## Response

| 200: Integration Hub 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|------------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-integration-hub) Datatype         | Description       |                                                               |
| IntegrationHub  (/looker/docs/refer ence/lookerapi/latest/types/Int egrationHub) []                                          |                   |                                                               |
| (array) can                              | lock object       | Operations the current user is able to perform on this object |
| id                                       | lock string       | ID of the hub.                                                |
| url                                      | string            | URL of the hub.                                               |
| label                                    | lock string       | Label of the hub.                                             |

| offi                                 | cial                                                                                                                                       | lock boolean                          | Whether this hub is a first-party integration hub operated by Looker. An error message, present if the integration hub   |
|--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| fetch_error_messagelock string       | metadata could not be fetched. If this is present, the integration hub is unusable. (Write-Only) An authorization key that will be sent to |                                       |                                                                                                                          |
| authorization_token                  | string                                                                                                                                     | the integration hub on every request. |                                                                                                                          |
| has_authorization_tokenlock boolean  | Whether the authorization_token is set for the hub. Whether the legal agreement message has been                                           |                                       |                                                                                                                          |
| legal_agreement_signedlock boolean   | signed by the user. This only matters if legal_agreement_required is true.                                                                 |                                       |                                                                                                                          |
| legal_agreement_requiredlock boolean | Whether the legal terms for the integration hub are required before use.                                                                   |                                       |                                                                                                                          |
| legal_agreement_textlock string      | The legal agreement text for this integration hub.                                                                                         |                                       |                                                                                                                          |

## Examples

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L354)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.