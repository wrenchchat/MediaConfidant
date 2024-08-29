Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Git Branches Version 4.0.24.14 (latest)
Get All Git Branches Returns a list of git branches in the project repository Request GET /projects/{project_id}/git_branches

| GET /projects/{project_id}/git_branches Datatype   | Description                    |            |
|----------------------------------------------------|--------------------------------|------------|
| Request                                            | HTTP Request                   |            |
| path                                               | HTTP Path                      |            |
| add_circle                                         | Expand HTTP Path definition... |            |
| project_id                                         | string                         | Project Id |

## Response

| 200: Git Branch 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|-------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-git-branch)                  | Datatype          | Description                                                   |
| GitBranch  (/looker/docs/refer ence/lookerapi/latest/types/Git Branch) []                                     |                   |                                                               |
| (array) can                         | lock object       | Operations the current user is able to perform on this object |

| The short name on the local. Updating `name` results   |              |                                                                                                 |
|--------------------------------------------------------|--------------|-------------------------------------------------------------------------------------------------|
| name                                                   | string       | in `git checkout `                                                                              |
| remote                                                 | lock string  | The name of the remote                                                                          |
| remote_name                                            | lock string  | The short name on the remote                                                                    |
| error                                                  | lock string  | Name of error                                                                                   |
| message                                                | lock string  | Message describing an error if present                                                          |
| owner_name                                             | lock string  | Name of the owner of a personal branch                                                          |
| readonly                                               | lock boolean | Whether or not this branch is readonly                                                          |
| personal                                               | lock boolean | Whether or not this branch is a personal branch - readonly for all developers except the owner  |
| is_local                                               | lock boolean | Whether or not a local ref exists for the branch                                                |
| is_remote                                              | lock boolean | Whether or not a remote ref exists for the branch                                               |
| is_production                                          | lock boolean | Whether or not this is the production branch Number of commits the local branch is ahead of the |
| ahead_count                                            | lock integer | remote Number of commits the local branch is behind the                                         |
| behind_count                                           | lock integer | remote UNIX timestamp at which this branch was last                                             |
| commit_at                                              | lock integer | committed. The resolved ref of this branch. Updating `ref` results                              |
| ref                                                    | string       | in `git reset --hard ``.                                                                        |
| remote_ref                                             | lock string  | The resolved ref of this branch remote.                                                         |

## Examples

Ruby

 (\#ruby)
https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/all_git_branches.rb (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/ruby/all_git_branches.rb\#L15)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.