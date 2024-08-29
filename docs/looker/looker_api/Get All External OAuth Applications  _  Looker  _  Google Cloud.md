Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All External Oauth Applications

Version 4.0.24.14 (latest)
Get all External OAuth Applications.

This is an OAuth Application which Looker uses to access external systems.

Request GET /external_oauth_applications

| GET /external_oauth_applications Request HTTP Request query HTTP Query add_circle Expand HTTP Query definition...   |
|---------------------------------------------------------------------------------------------------------------------|

query HTTP Query

add_circle Expand HTTP Query definition...

name string Application name client_id string Application Client ID

Response

(array)

| 200: External OAuth Applicat… 400: Bad Request…   | 404: Not Found…   | 429: Too Many Re   |
|---------------------------------------------------|-------------------|--------------------|
| (#200:-external-oauth-application) Datatype       | Description       |                    |
| ExternalOauthAp plication                         |                   |                    |

 (/looker/docs/refer ence/lookerapi/latest/types/Ext ernalOauthApplicati on)
[]

| []            |             |                                                                                        |
|---------------|-------------|----------------------------------------------------------------------------------------|
| can           | lock object | Operations the current user is able to perform on this object                          |
| id            | lock string | ID of this OAuth Application The name of this application. For Snowflake               |
| name          | string      | connections, this should be the name of the host database.                             |
| client_id     | string      | The OAuth Client ID for this application (Write-Only) The OAuth Client Secret for this |
| client_secret | string      | application                                                                            |
| tenant_id     | string      | The OAuth Tenant ID for this application                                               |
| dialect_name  | string      | The database dialect for this application.                                             |
| created_at    | lock string | Creation time for this application                                                     |

## Examples

Swift

 (\#swift)
https://github.com/looker-open-source/sdkcodegen/blob/main/swift/looker/Tests/lookerTests/smokeTests.swift (https://github.com/looker-open-source/sdkcodegen/blob/main/swift/looker/Tests/lookerTests/smokeTests.swift\#L230)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.