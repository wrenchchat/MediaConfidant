Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get Auth Version 4.0.24.14 (latest)
Get API Session Returns information about the current API session, such as which workspace is selected for the session.

Request GET /session

| Datatype   | Description   |
|------------|---------------|
| Request    | HTTP Request  |

## Response

| 200: Auth 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|-------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-auth)                  | Datatype          | Description                                                   |
| ApiSession  (/looker/docs/refer ence/lookerapi/latest/types/Api Session)                               |                   |                                                               |
| (object) can                  | lock object       | Operations the current user is able to perform on this object |
| workspace_id                  | string            | The id of active workspace for this session                   |

sudo_user_id lock string The id of the actual user in the case when this session represents one user sudo'ing as another

## Examples

```
TypeScript
          
    (#typescript)
          Python (#python)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/examples/typescript/validateBranch.ts (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/typescript/validateBranch.ts\#L12)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.