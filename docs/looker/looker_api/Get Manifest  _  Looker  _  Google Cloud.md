Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get Manifest Version 4.0.24.14 (latest)
Get A Projects Manifest object Returns the project with the given project id Request

| GET /projects/{project_id}/manifest Datatype   | Description                    |            |
|------------------------------------------------|--------------------------------|------------|
| Request                                        | HTTP Request                   |            |
| path                                           | HTTP Path                      |            |
| add_circle                                     | Expand HTTP Path definition... |            |
| project_id                                     | string                         | Project Id |

## Response

| 200: Manifest 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|-----------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-manifest)                  | Datatype          | Description                                                   |
| Manifest  (/looker/docs/refer ence/lookerapi/latest/types/Ma nifest)                                   |                   |                                                               |
| (object) can                      | lock object       | Operations the current user is able to perform on this object |
| name                              | lock string       | Manifest project name                                         |

imports

ImportedProject

 (/looker/docs/refer

ence/lookerapi/latest/types/Im

portedProject)

[]

add_circle Expand ImportedProject definition...

name lock string Dependency name

url lock string Url for a remote dependency

ref lock string Ref for a remote dependency

is_remote lock boolean Flag signifying if a dependency is remote or local

localization_settingslock LocalizationSetti ngs
(/looker/docs/refe rence/lookerapi/latest/types/Lo calizationSettings)
Localization settings for a project add_circle Expand LocalizationSettings definition...

default_localelock string Default locale for localization localization_levellock string Localization level - strict or permissive Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.