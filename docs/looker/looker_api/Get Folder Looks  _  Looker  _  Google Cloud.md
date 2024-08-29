Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get Folder Looks Version 4.0.24.14 (latest)
Get all looks in a folder.

In API 4.0+, all looks in a folder will be returned, excluding looks in the trash.

Request GET /folders/{folder_id}/looks

| GET /folders/{folder_id}/looks Datatype   | Description                     |                   |
|-------------------------------------------|---------------------------------|-------------------|
| Request                                   | HTTP Request                    |                   |
| path                                      | HTTP Path                       |                   |
| add_circle                                | Expand HTTP Path definition...  |                   |
| folder_id                                 | string                          | Id of folder      |
| query                                     | HTTP Query                      |                   |
| add_circle                                | Expand HTTP Query definition... |                   |
| fields                                    | string                          | Requested fields. |

Response

| 200: Looks 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…   |
|--------------------------------|-------------------|---------------------------|
| (#200:-looks)                  | Datatype          | Description               |

(array)
LookWithQuery
 (/looker/docs/refer ence/lookerapi/latest/types/Lo okWithQuery)
[]

| []                                    |                                                  |                                                               |
|---------------------------------------|--------------------------------------------------|---------------------------------------------------------------|
| can                                   | lock object                                      | Operations the current user is able to perform on this object |
| content_metadata_idlock string        | Id of content metadata                           |                                                               |
| id                                    | lock string                                      | Unique Id                                                     |
| title                                 | string                                           | Look Title                                                    |
| user_id                               | string                                           | User Id                                                       |
| content_favorite_idlock string        | Content Favorite Id                              |                                                               |
| created_at                            | lock string                                      | Time that the Look was created.                               |
| deleted                               | boolean                                          | Whether or not a look is 'soft' deleted.                      |
| deleted_at                            | lock string                                      | Time that the Look was deleted.                               |
| deleter_id                            | lock string                                      | Id of User that deleted the look.                             |
| description                           | string                                           | Description                                                   |
| embed_url                             | lock string                                      | Embed Url                                                     |
| excel_file_url                        | lock string                                      | Excel File Url                                                |
| favorite_count                        | lock integer                                     | Number of times favorited                                     |
| google_spreadsheet_formulalock string | Google Spreadsheet Formula                       |                                                               |
| image_embed_urllock string            | Image Embed Url                                  |                                                               |
| is_run_on_load                        | boolean                                          | auto-run query when Look viewed                               |
| last_accessed_atlock string           | Time that the Look was last accessed by any user |                                                               |
| last_updater_id lock string           | Id of User that last updated the look.           |                                                               |
| last_viewed_at                        | lock string                                      | Time last viewed in the Looker web UI                         |
| LookModel                             |                                                  |                                                               |

model lock LookModel
 (/looker/docs/refer ence/lookerapi/latest/types/Lo okModel)
Model

| add_circle   | Expand LookModel definition...   |             |
|--------------|----------------------------------|-------------|
| id           | lock string                      | Model Id    |
| label        | lock string                      | Model Label |
| public       | boolean                          | Is Public   |
| public_slug  | lock string                      | Public Slug |
| public_url   | lock string                      | Public Url  |
| query_id     | string                           | Query Id    |

short_url lock  Short Url Folder of this Look folder lock FolderBase
 (/looker/docs/refer ence/lookerapi/latest/types/Fol derBase)

| add_circle                         | Expand FolderBase definition...                  |                                                                          |
|------------------------------------|--------------------------------------------------|--------------------------------------------------------------------------|
| name                               | string                                           | Unique Name Id of Parent. If the parent id is null, this is a root-level |
| parent_id                          | string                                           | entry                                                                    |
| id                                 | lock string                                      | Unique Id                                                                |
| content_metadata_idlock string     | Id of content metadata                           |                                                                          |
| created_at                         | lock string                                      | Time the folder was created                                              |
| creator_id                         | lock string                                      | User Id of Creator                                                       |
| child_count                        | lock integer                                     | Children Count Embedder's Id if this folder was autogenerated as an      |
| external_id                        | lock string                                      | embedding shared folder via 'external_group_id' in an SSO embed login    |
| is_embed                           | lock boolean                                     | Folder is an embed folder                                                |
| is_embed_shared_rootlock boolean   | Folder is the root embed shared folder           |                                                                          |
| is_embed_users_rootlock boolean    | Folder is the root embed users folder            |                                                                          |
| is_personal                        | lock boolean                                     | Folder is a user's personal folder                                       |
| is_personal_descendantlock boolean | Folder is descendant of a user's personal folder |                                                                          |
| is_shared_rootlock boolean         | Folder is the root shared folder                 |                                                                          |
| is_users_root lock boolean         | Folder is the root user folder                   |                                                                          |
| can                                | lock object                                      | Operations the current user is able to perform on this object            |
| folder_id                          | string                                           | Folder Id                                                                |
| updated_at                         | lock string                                      | Time that the Look was updated.                                          |
| view_count                         | lock integer                                     | Number of times viewed in the Looker web UI                              |
| Query  (/looker/docs/refer         |                                                  |                                                                          |
| query                              | lock ence/lookerapi/latest/types/Qu ery) Query                                                  |                                                                          |
| add_circle                         | Expand Query definition...                       |                                                                          |

can lock object Operations the current user is able to perform on this object

| id                  | lock string   | Unique Id                                                                                                                                                                                                                                                                                                                                                                                                     |
|---------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| model               | string        | Model                                                                                                                                                                                                                                                                                                                                                                                                         |
| view                | string        | Explore Name                                                                                                                                                                                                                                                                                                                                                                                                  |
| fields              | string[]      |                                                                                                                                                                                                                                                                                                                                                                                                               |
| pivots              | string[]      |                                                                                                                                                                                                                                                                                                                                                                                                               |
| fill_fields         | string[]      | Filters will contain data pertaining to complex filters that do not contain "or" conditions. When "or"                                                                                                                                                                                                                                                                                                        |
| filters             | object        | conditions are present, filter data will be found on the `filter_expression` property.                                                                                                                                                                                                                                                                                                                        |
| filter_expression   | string        | Filter Expression                                                                                                                                                                                                                                                                                                                                                                                             |
| sorts               | string[]      |                                                                                                                                                                                                                                                                                                                                                                                                               |
| limit               | string        | Limit                                                                                                                                                                                                                                                                                                                                                                                                         |
| column_limit        | string        | Column Limit                                                                                                                                                                                                                                                                                                                                                                                                  |
| total               | boolean       | Total                                                                                                                                                                                                                                                                                                                                                                                                         |
| row_total           | string        | Raw Total                                                                                                                                                                                                                                                                                                                                                                                                     |
| subtotals           | string[]      | Visualization configuration properties. These properties are typically opaque and differ based on the type of visualization used. There is no specified set of allowed keys. The values can be any type                                                                                                                                                                                                       |
| vis_config          | object        | supported by JSON. A "type" key with a string value is often present, and is used by Looker to determine which visualization to present. Visualizations ignore unknown vis_config properties. The filter_config represents the state of the filter UI on the explore page for a given query. When running a query via the Looker UI, this parameter takes precedence over "filters". When creating a query or |
| filter_config       | object        | modifying an existing query, "filter_config" should be set to null. Setting it to any other value could cause unexpected filtering behavior. The format should be considered opaque.                                                                                                                                                                                                                          |
| visible_ui_sections | string        | Visible UI Sections                                                                                                                                                                                                                                                                                                                                                                                           |
| slug                | lock string   | Slug                                                                                                                                                                                                                                                                                                                                                                                                          |
| dynamic_fields      | string        | Dynamic Fields Client Id: used to generate shortened explore URLs. If                                                                                                                                                                                                                                                                                                                                         |
| client_id           | string        | set by client, must be a unique 22 character alphanumeric string. Otherwise one will be generated.                                                                                                                                                                                                                                                                                                            |

| share_url                          | lock string            | Share Url      |
|------------------------------------|------------------------|----------------|
| expanded_share_urllock string      | Expanded Share Url     |                |
| url                                | lock string            | Expanded Url   |
| query_timezone                     | string                 | Query Timezone |
| has_table_calculationslock boolean | Has Table Calculations |                |
| url                                | lock string            | Url            |

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.