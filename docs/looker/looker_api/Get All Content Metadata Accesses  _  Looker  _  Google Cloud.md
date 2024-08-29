Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Content Metadata Accesses

Version 4.0.24.14 (latest)
All content metadata access records for a content metadata item.

Request GET /content_metadata_access

| GET /content_metadata_access Datatype   | Description                     |                        |
|-----------------------------------------|---------------------------------|------------------------|
| Request                                 | HTTP Request                    |                        |
| query                                   | HTTP Query                      |                        |
| add_circle                              | Expand HTTP Query definition... |                        |
| content_metadata_id                     | string                          | Id of content metadata |
| fields                                  | string                          | Requested fields.      |

Response

| 200: Content Metadata Acce… 400: Bad Request…   | 404: Not Found…   | 429: Too Many Re                                              |
|-------------------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-content-metadata-access) Datatype        | Description       |                                                               |
| ContentMetaGrou pUser  (/looker/docs/refer ence/lookerapi/latest/types/Co ntentMetaGroupUse r) []                                                 |                   |                                                               |
| (array) can                                     | lock object       | Operations the current user is able to perform on this object |

| id                                                     | lock string                       | Unique Id              |
|--------------------------------------------------------|-----------------------------------|------------------------|
| content_metadata_idlock string                         | Id of associated Content Metadata |                        |
| Type of permission: "view" or "edit" Valid values are: |                                   |                        |
| permission_typelock string                             | "view", "edit".                   |                        |
| group_id                                               | lock string                       | ID of associated group |
| user_id                                                | lock string                       | ID of associated user  |

## Examples

Python

 (\#python)
https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/folder_permission_access.py
 (https://github.com/looker-open-source/sdkcodegen/blob/main/examples/python/folder_permission_access.py\#L50)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.