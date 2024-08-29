Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Datagroups

Version 4.0.24.14 (latest)
Get information about all datagroups.

Request GET /datagroups

| Datatype   | Description   |
|------------|---------------|
| Request    | HTTP Request  |

Response

| 200: Datagroup 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                                       |
|------------------------------------|-------------------|-------------------------------------------------------------------------------|
| (#200:-datagroup)                  | Datatype          | Description                                                                   |
| Datagroup  (/looker/docs/refer ence/lookerapi/latest/types/Dat agroup) []                                    |                   |                                                                               |
| (array) can                        | lock object       | Operations the current user is able to perform on this object                 |
| created_at                         | lock integer      | UNIX timestamp at which this entry was created.                               |
| id                                 | lock string       | Unique ID of the datagroup Name of the model containing the datagroup. Unique |
| model_name                         | lock string       | when combined with name. Name of the datagroup. Unique when combined with     |
| name                               | lock string       | model_name.                                                                   |

| UNIX timestamp before which cache entries are   |                                                                  |                                                                                                  |
|-------------------------------------------------|------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| stale_before                                    | integer                                                          | considered stale. Cannot be in the future. UNIX timestamp at which this entry trigger was last   |
| trigger_check_atlock integer                    | checked. The message returned with the error of the last trigger |                                                                                                  |
| trigger_error                                   | lock string                                                      | check.                                                                                           |
| trigger_value                                   | lock string                                                      | The value of the trigger when last checked. UNIX timestamp at which this entry became triggered. |
| triggered_at                                    | integer                                                          | Cannot be in the future.                                                                         |

## Examples

| Kotlin TypeScript (#typescript)Swift (#swift) (#kotlin)   |
|-----------------------------------------------------------|

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L274)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.