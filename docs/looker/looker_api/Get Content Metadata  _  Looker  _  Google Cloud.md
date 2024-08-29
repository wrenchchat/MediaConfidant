Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get Content Metadata

Version 4.0.24.14 (latest)
Get information about an individual content metadata record.

Request GET /content_metadata/{content_metadata_id}

| GET /content_metadata/{content_metadata_id} Datatype Description Request HTTP Request path HTTP Path add_circle Expand HTTP Path definition... content_metadata_id string Id of content metadata query HTTP Query add_circle Expand HTTP Query definition... fields string Requested fields.   |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

Response

| 200: Content Metadata 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|-------------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-content-metadata) Datatype         | Description       |                                                               |
| ContentMeta  (/looker/docs/refer ence/lookerapi/latest/types/Co ntentMeta)                                           |                   |                                                               |
| (object) can                              | lock object       | Operations the current user is able to perform on this object |

| id            | lock string   | Unique Id                                                            |
|---------------|---------------|----------------------------------------------------------------------|
| name          | lock string   | Name or title of underlying content                                  |
| parent_id     | lock string   | Id of Parent Content Id of associated dashboard when content_type is |
| dashboard_id  | lock string   | "dashboard"                                                          |
| look_id       | lock string   | Id of associated look when content_type is "look"                    |
| folder_id     | lock string   | Id of associated folder when content_type is "space"                 |
| content_type  | lock string   | Content Type ("dashboard", "look", or "folder")                      |
| inherits      | boolean       | Whether content inherits its access levels from parent               |
| inheriting_id | lock string   | Id of Inherited Content                                              |
| slug          | lock string   | Content Slug                                                         |

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.