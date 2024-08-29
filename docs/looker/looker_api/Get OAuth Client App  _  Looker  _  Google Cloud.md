Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get OAuth Client App Version 4.0.24.14 (latest)
Get Oauth Client App Returns the registered app client with matching client_guid.

Request

| GET /oauth_client_apps/{client_guid} Datatype   | Description                     |                                   |
|-------------------------------------------------|---------------------------------|-----------------------------------|
| Request                                         | HTTP Request                    |                                   |
| path                                            | HTTP Path                       |                                   |
| add_circle                                      | Expand HTTP Path definition...  |                                   |
| client_guid                                     | string                          | The unique id of this application |
| query                                           | HTTP Query                      |                                   |
| add_circle                                      | Expand HTTP Query definition... |                                   |
| fields                                          | string                          | Requested fields.                 |

Response

| 200: OAuth Client App 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…   |
|-------------------------------------------|-------------------|---------------------------|
| (#200:-oauth-client-app) Datatype         | Description       |                           |

| OauthClientApp  (/looker/docs/refer ence/lookerapi/latest/types/Oa uthClientApp)                                  |                                                                                    |                                                                                                                                                                                  |
|----------------------------------|------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| (object) can                     | lock object                                                                        | Operations the current user is able to perform on this object                                                                                                                    |
| client_guid                      | lock string                                                                        | The globally unique id of this application The uri with which this application will receive an auth                                                                              |
| redirect_uri                     | string                                                                             | code by browser redirect.                                                                                                                                                        |
| display_name                     | string                                                                             | The application's display name A description of the application that will be displayed                                                                                           |
| description                      | string                                                                             | to users When enabled is true, OAuth2 and API requests will be accepted from this app. When false, all requests from                                                             |
| enabled                          | boolean                                                                            | this app will be refused. Setting disabled invalidates existing tokens. If set, only Looker users who are members of this group can use this web app with Looker. If group_id is |
| group_id                         | string                                                                             | not set, any Looker user may use this app to access this Looker instance All auth codes, access tokens, and refresh tokens                                                       |
| tokens_invalid_beforelock string | issued for this application prior to this date-time for ALL USERS will be invalid. |                                                                                                                                                                                  |
| UserPublic  (/looker/docs/refer ence/lookerapi/latest/types/Us erPublic) []                                  |                                                                                    |                                                                                                                                                                                  |
| add_circle                       | Expand UserPublic definition...                                                    |                                                                                                                                                                                  |
| activated_users can lock object  | Operations the current user is able to perform on this object                      |                                                                                                                                                                                  |
| id                               | lock string                                                                        | Unique Id                                                                                                                                                                        |
| first_name                       | lock string                                                                        | First Name                                                                                                                                                                       |
| last_name                        | lock string                                                                        | Last Name Full name for display (available only if both first_name                                                                                                               |
| display_namelock string          | and last_name are set)                                                             |                                                                                                                                                                                  |
| avatar_url                       | lock string                                                                        | URL for the avatar image (may be generic)                                                                                                                                        |
| url                              | lock string                                                                        | Link to get this item                                                                                                                                                            |

# Examples

TypeScript

 (\#typescript)
https://github.com/looker-open-source/sdk-codegen/blob/main/packages/sdk-codegen-scripts/scripts/utils.ts
 (https://github.com/looker-open-source/sdk-codegen/blob/main/packages/sdk-codegenscripts/scripts/utils.ts\#L86)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.