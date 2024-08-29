Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

## Get All Looks

Version 4.0.24.14 (latest)
Get information about all active Looks Returns an array of **abbreviated Look objects** describing all the looks that the caller has access to.

Soft-deleted Looks are not included.

Get the **full details** of a specific look by id with look(id)
 (/looker/docs/reference/looker-api/latest/methods/Look/look)
Find **soft-deleted looks** with search_looks()
 (/looker/docs/reference/looker-api/latest/methods/Look/search_looks)
Request GET /looks

| Datatype   | Description                     |                   |
|------------|---------------------------------|-------------------|
| Request    | HTTP Request                    |                   |
| query      | HTTP Query                      |                   |
| add_circle | Expand HTTP Query definition... |                   |
| fields     | string                          | Requested fields. |

## Response

| 200: Look 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…   |
|-------------------------------|-------------------|---------------------------|
| (#200:-look)                  | Datatype          | Description               |

(array)
Look
 (/looker/docs/refer ence/lookerapi/latest/types/Lo ok)
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

short_url lock string Short Url folder lock FolderBase
 (/looker/docs/refer ence/lookerapi/latest/types/Fol derBase)
Folder of this Look

| derBase)                           |                                                  |                                                                          |
|------------------------------------|--------------------------------------------------|--------------------------------------------------------------------------|
| add_circle                         | Expand FolderBase definition...                  |                                                                          |
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

Examples

```
Python
      
   (#python)
      Ruby (#ruby)Kotlin (#kotlin)TypeScript (#typescript)Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/lookersdk-flask/app/looker.py
 (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/lookersdkflask/app/looker.py\#L23)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.