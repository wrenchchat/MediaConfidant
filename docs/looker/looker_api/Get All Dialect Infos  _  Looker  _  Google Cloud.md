Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Dialect Infos Version 4.0.24.14 (latest)
Get information about all dialects.

Request GET /dialect_info

| Datatype   | Description                     |                   |
|------------|---------------------------------|-------------------|
| Request    | HTTP Request                    |                   |
| query      | HTTP Query                      |                   |
| add_circle | Expand HTTP Query definition... |                   |
| fields     | string                          | Requested fields. |

Response

| 200: Dialect Info 400: Bad Request…   | 404: Not Found…                | 429: Too Many Requests…                                       |
|---------------------------------------|--------------------------------|---------------------------------------------------------------|
| (#200:-dialect-info)                  | Datatype                       | Description                                                   |
| DialectInfo  (/looker/docs/refer ence/lookerapi/latest/types/Dia lectInfo) []                                       |                                |                                                               |
| (array) can                           | lock object                    | Operations the current user is able to perform on this object |
| default_max_connectionslock string    | Default number max connections |                                                               |
| default_port                          | lock string                    | Default port number                                           |
| installed                             | lock boolean                   | Is the supporting driver installed                            |

label lock  The human-readable label of the connection label_for_database_equivalentlock What the dialect calls the equivalent of a normal SQL table label_for_schema_equivalentlock string What the dialect calls the equivalent of a schema-level namespace name lock string The name of the dialect supported_optionslock DialectInfoOption s
(/looker/docs/refer ence/lookerapi/latest/types/Di alectInfoOptions)
Option support details add_circle Expand DialectInfoOptions definition...

additional_paramslock boolean Has additional params support

after_connect_statementslock boolean Has support for issuing statements after

connecting to the database

analytical_view_datasetlock boolean Has analytical view support auth lock boolean Has auth support cost_estimatelock boolean Has configurable cost estimation disable_context_commentlock boolean Can disable query context comments

host lock boolean Host is required instance_namelock boolean Instance name is required max_billing_gigabyteslock boolean Has max billing gigabytes support oauth_credentialslock boolean Has support for a service account

pdts_for_oauthlock boolean Has OAuth for PDT support

port lock boolean Port can be specified project_namelock boolean Has project name support

schema lock boolean Schema can be specified

service_account_credentialslock boolean Has support for a service account

ssl lock boolean Has TLS/SSL support

timezone lock boolean Has timezone support

tmp_table lock boolean Has tmp table support tns lock boolean Has Oracle TNS support

username lock boolean Username can be specified

username_requiredlock boolean Username is required

supports_connection_poolinglock boolean Has support for connection pooling

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L292)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.