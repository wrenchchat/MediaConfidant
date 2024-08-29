Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Project Files Version 4.0.24.14 (latest)
Get All Project Files Returns a list of the files in the project Request GET /projects/{project_id}/files

| GET /projects/{project_id}/files Datatype   | Description                     |                  |
|---------------------------------------------|---------------------------------|------------------|
| Request                                     | HTTP Request                    |                  |
| path                                        | HTTP Path                       |                  |
| add_circle                                  | Expand HTTP Path definition...  |                  |
| project_id                                  | string                          | Project Id       |
| query                                       | HTTP Query                      |                  |
| add_circle                                  | Expand HTTP Query definition... |                  |
| fields                                      | string                          | Requested fields |

Response

| 200: Project File 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…   |
|---------------------------------------|-------------------|---------------------------|
| (#200:-project-file)                  | Datatype          | Description               |

(array)
ProjectFile
 (/looker/docs/refer ence/lookerapi/latest/types/Pro jectFile)
[]

| jectFile) []                   |                                |                                                                                                                                                                           |
|--------------------------------|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| can                            | lock object                    | Operations the current user is able to perform on this object An opaque token uniquely identifying a file within a project. Avoid parsing or decomposing the text of this |
| id                             | lock string                    | token. This token is stable within a Looker release but may change between Looker releases Path, file name, and extension of the file relative to the                     |
| path                           | lock string                    | project root directory                                                                                                                                                    |
| title                          | lock string                    | Display name                                                                                                                                                              |
| type                           | lock string                    | File type: model, view, etc                                                                                                                                               |
| extension                      | lock string                    | The extension of the file: .view.lkml, .model.lkml, etc                                                                                                                   |
| mime_type                      | lock string                    | File mime type                                                                                                                                                            |
| editable                       | lock boolean                   | State of editability for the file.                                                                                                                                        |
| GitStatus  (/looker/docs/refer |                                |                                                                                                                                                                           |
| git_status                     | lock ence/lookerapi/latest/types/Git Status) Status of the file according to git                                |                                                                                                                                                                           |
| add_circle                     | Expand GitStatus definition... |                                                                                                                                                                           |
| action                         | lock string                    | Git action: add, delete, etc                                                                                                                                              |
| conflict                       | lock boolean                   | When true, changes to the local file conflict with the remote repository                                                                                                  |
| revertable                     | lock boolean                   | When true, the file can be reverted to an earlier state                                                                                                                   |
| text                           | lock string                    | Git description of the action                                                                                                                                             |

## Examples

Ruby

 (\#ruby)
https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/list_files_per_project.rb
 (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/list_files_per_project.rb\#L22)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.