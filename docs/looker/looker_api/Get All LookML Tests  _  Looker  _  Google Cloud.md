Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

## Get All Lookml Tests

Version 4.0.24.14 (latest)
Get All LookML Tests Returns a list of tests which can be run to validate a project's LookML code and/or the underlying data, optionally filtered by the file id. Call Run LookML Test (/looker/docs/reference/looker-api/latest/methods/Project/run_lookml_test) to execute tests.

## Request

| GET /projects/{project_id}/lookml_tests Datatype   | Description                     |            |
|----------------------------------------------------|---------------------------------|------------|
| Request                                            | HTTP Request                    |            |
| path                                               | HTTP Path                       |            |
| add_circle                                         | Expand HTTP Path definition...  |            |
| project_id                                         | string                          | Project Id |
| query                                              | HTTP Query                      |            |
| add_circle                                         | Expand HTTP Query definition... |            |
| file_id                                            | string                          | File Id    |

## Response

| 200: LookML Test 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…   |
|--------------------------------------|-------------------|---------------------------|
| (#200:-lookml-test)                  | Datatype          | Description               |

(array)
LookmlTest
 (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlTest)
[]

| []                          |                                  |                                                                                                     |
|-----------------------------|----------------------------------|-----------------------------------------------------------------------------------------------------|
| can                         | lock object                      | Operations the current user is able to perform on this object                                       |
| model_name                  | lock string                      | Name of model containing this test.                                                                 |
| name                        | lock string                      | Name of this test.                                                                                  |
| explore_name                | lock string                      | Name of the explore this test runs a query against The url parameters that can be used to reproduce |
| query_url_paramslock string | this test's query on an explore. |                                                                                                     |
| file                        | lock string                      | Name of the LookML file containing this test.                                                       |
| line                        | lock integer                     | Line number of this test in LookML.                                                                 |

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.