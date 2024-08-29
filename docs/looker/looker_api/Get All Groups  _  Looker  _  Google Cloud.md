Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Groups

Version 4.0.24.14 (latest)
Get information about all groups.

Request

| GET /groups                 | Datatype                        | Description                                                                                  |
|-----------------------------|---------------------------------|----------------------------------------------------------------------------------------------|
| Request                     | HTTP Request                    |                                                                                              |
| query                       | HTTP Query                      |                                                                                              |
| add_circle                  | Expand HTTP Query definition... |                                                                                              |
| fields                      | string                          | Requested fields. DEPRECATED. Use limit and offset instead. Return                           |
| page                        | integer                         | only page N of paginated results DEPRECATED. Use limit and offset instead. Return N          |
| per_page                    | integer                         | rows of data per page Number of results to return. (used with offset and                     |
| limit                       | integer                         | takes priority over page and per_page) Number of results to skip before returning any. (used |
| offset                      | integer                         | with limit and takes priority over page and per_page)                                        |
| sorts                       | string                          | Fields to sort by.                                                                           |
| ids                         | string[]                        | Id of content metadata to which groups must have                                             |
| content_metadata_id         | string                          | access.                                                                                      |
| can_add_to_content_metadata | boolean                         | Select only groups that either can/cannot be given access to content.                        |

Response

200: Group

(#200:-group)

400: Bad Request… 404: Not Found… 429: Too Many Requests…

| (#200:-group)                     | Datatype                                      | Description                                                   |
|-----------------------------------|-----------------------------------------------|---------------------------------------------------------------|
| Group  (/looker/docs/refer ence/lookerapi/latest/types/Gro up) []                                   |                                               |                                                               |
| (array) can                       | lock object                                   | Operations the current user is able to perform on this object |
| can_add_to_content_metadata       | boolean                                       | Group can be used in content access controls                  |
| contains_current_userlock boolean | Currently logged in user is group member      |                                                               |
| external_group_idlock string      | External Id group if embed group              |                                                               |
| externally_managedlock boolean    | Group membership controlled outside of Looker |                                                               |
| id                                | lock string                                   | Unique Id                                                     |
| include_by_defaultlock boolean    | New users are added to this group by default  |                                                               |
| name                              | string                                        | Name of group                                                 |
| user_count                        | lock integer                                  | Number of users included in this group                        |

## Examples

```
Ruby
    
   (#ruby)
    Kotlin (#kotlin)Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/all_users_to_group.rb
 (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/all_users_to_group.rb\#L10)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.