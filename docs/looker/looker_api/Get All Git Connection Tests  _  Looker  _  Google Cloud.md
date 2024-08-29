Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Git Connection Tests

Version 4.0.24.14 (latest)
Get All Git Connection Tests dev mode required.

Call update_session to select the 'dev' workspace.

Returns a list of tests which can be run against a project's (or the dependency project for the provided remote_url) git connection. Call Run Git Connection Test (/looker/docs/reference/looker-api/latest/methods/Project/run_git_connection_test) to execute each test in sequence.

Tests are ordered by increasing specificity. Tests should be run in the order returned because later tests require functionality tested by tests earlier in the test list. For example, a late-stage test for write access is meaningless if connecting to the git server (an early test) is failing.

## Request

| GET /projects/{project_id}/git_connection_tests Datatype Description Request HTTP Request path HTTP Path add_circle Expand HTTP Path definition... project_id string Project Id query HTTP Query add_circle Expand HTTP Query definition...   |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

remote_url string
(Optional: leave blank for root project) The remote url for remote dependency to test.

Response

| 200: Git Connection Test 400: Bad Request…   | 404: Not Found…   | 429: Too Many Request                                         |
|----------------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-git-connection-test) Datatype         | Description       |                                                               |
| GitConnectionTes t  (/looker/docs/refer ence/lookerapi/latest/types/Git ConnectionTest) []                                              |                   |                                                               |
| (array) can                                  | lock object       | Operations the current user is able to perform on this object |
| description                                  | lock string       | Human readable string describing the test                     |
| id                                           | lock string       | A short string, uniquely naming this test                     |

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.