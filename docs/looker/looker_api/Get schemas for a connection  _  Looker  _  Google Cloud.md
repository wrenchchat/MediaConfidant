Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get Schemas For A Connection

Version 4.0.24.14 (latest)
Get the list of schemas and tables for a connection Request GET /connections/{connection_name}/schemas

| Datatype        | Description                     |                                                   |
|-----------------|---------------------------------|---------------------------------------------------|
| Request         | HTTP Request                    |                                                   |
| path            | HTTP Path                       |                                                   |
| add_circle      | Expand HTTP Path definition...  |                                                   |
| connection_name | string                          | Name of connection                                |
| query           | HTTP Query                      |                                                   |
| add_circle      | Expand HTTP Query definition... | For dialects that support multiple databases,     |
| database        | string                          | optionally identify which to use                  |
| cache           | boolean                         | True to use fetch from cache, false to load fresh |
| fields          | string                          | Requested fields.                                 |

Response

| 400: Bad Request…   | 404: Not Found…   | 422: Validation Erro   |
|---------------------|-------------------|------------------------|

Datatype **Description**

Schema

 (/looker/docs/refer

ence/lookerapi/latest/types/Sch

ema)

[]

| ence/lookerapi/latest/types/Sch ema) []                                                                                                                    |              |                                    |
|--------------------------------------------------------------------------------------------------------------------|--------------|------------------------------------|
| (array) name                                                                                                       | lock string  | Schema name                        |
| is_default                                                                                                         | lock boolean | True if this is the default schema |
| Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License |              |                                    |

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.