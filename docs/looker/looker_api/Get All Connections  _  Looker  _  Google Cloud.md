Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Connections

Version 4.0.24.14 (latest)
Get information about all connections.

Request GET /connections

| GET /connections   | Datatype                        | Description       |
|--------------------|---------------------------------|-------------------|
| Request            | HTTP Request                    |                   |
| query              | HTTP Query                      |                   |
| add_circle         | Expand HTTP Query definition... |                   |
| fields             | string                          | Requested fields. |

Response

| 200: Connection 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                                                                       |
|-------------------------------------|-------------------|---------------------------------------------------------------------------------------------------------------|
| (#200:-connection)                  | Datatype          | Description                                                                                                   |
| DBConnection  (/looker/docs/refer ence/lookerapi/latest/types/DB Connection) []                                     |                   |                                                                                                               |
| (array) can                         | lock object       | Operations the current user is able to perform on this object Name of the connection. Also used as the unique |
| name                                | string            | identifier                                                                                                    |

dialect lock Dialect
 (/looker/docs/refer ence/lookerapi/latest/types/Dia lect)
(Read-only) SQL Dialect details

add_circle Expand Dialect definition...

name lock string The name of the dialect

label lock string The human-readable label of the connection

supports_cost_estimatelock boolean Whether the dialect supports query cost estimates cost_estimate_stylelock string How the dialect handles cost estimation persistent_table_indexeslock string PDT index columns persistent_table_sortkeyslock string PDT sortkey columns persistent_table_distkeylock string PDT distkey column supports_streaminglock boolean Supports streaming results automatically_run_sql_runner_snippetslock boolean Should SQL Runner snippets automatically be run connection_tests string[]
supports_inducerlock boolean Is supported with the inducer (i.e. generate from sql)
supports_multiple_databaseslock boolean Can multiple databases be accessed from a connection using this dialect supports_persistent_derived_tableslock boolean Whether the dialect supports allowing Looker to build persistent derived tables has_ssl_supportlock boolean Does the database have client SSL support settable through the JDBC string explicitly?

snippets

Snippet

 (/looker/docs/refer

ence/lookerapi/latest/types/Sni

ppet)

[]

add_circle Expand Snippet definition...

name lock string Name of the snippet

label lock string Label of the snippet sql lock string SQL text of the snippet

| name         | lock string   | Name of the snippet                         |
|--------------|---------------|---------------------------------------------|
| label        | lock string   | Label of the snippet                        |
| sql          | lock string   | SQL text of the snippet                     |
| pdts_enabled | lock boolean  | True if PDTs are enabled on this connection |

| Host name/address of server; or the string 'localhost'   |                                                                              |                                                                                                 |
|----------------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| host                                                     | string                                                                       | in case of a connection over an SSH tunnel. Port number on server. If the connection is over an |
| port                                                     | string                                                                       | SSH tunnel, then the local port associated with the SSH tunnel.                                 |
| username                                                 | string                                                                       | Username for server authentication                                                              |
| password                                                 | string                                                                       | (Write-Only) Password for server authentication                                                 |
| uses_oauth                                               | lock boolean                                                                 | Whether the connection uses OAuth for authentication.                                           |
| uses_instance_oauthlock boolean                          | Whether the integration uses the oauth instance account.                     |                                                                                                 |
| (Write-Only) Base64 encoded Certificate body for         |                                                                              |                                                                                                 |
| certificate                                              | string                                                                       | server authentication (when appropriate for dialect).                                           |
| file_type                                                | string                                                                       | (Write-Only) Certificate keyfile type - .json or .p12                                           |
| database                                                 | string                                                                       | Database name                                                                                   |
| db_timezone                                              | string                                                                       | Time zone of database                                                                           |
| query_timezone                                           | string                                                                       | Timezone to use in queries                                                                      |
| schema                                                   | string                                                                       | Schema name                                                                                     |
| max_connections                                          | integer                                                                      | Maximum number of concurrent connection to use Maximum number of concurrent queries to begin on |
| max_queries                                              | integer                                                                      | this connection Maximum number of concurrent queries per user                                   |
| max_queries_per_user                                     | integer                                                                      | to begin on this connection Maximum size of query in GBs (BigQuery only, can                    |
| max_billing_gigabytes                                    | string                                                                       | be a user_attribute name)                                                                       |
| ssl                                                      | boolean                                                                      | Use SSL/TLS when connecting to server                                                           |
| verify_ssl                                               | boolean                                                                      | Verify the SSL                                                                                  |
| tmp_db_name                                              | string                                                                       | Name of temporary database (if used) Additional params to add to JDBC connection                |
| jdbc_additional_params                                   | string                                                                       | string                                                                                          |
| pool_timeout                                             | integer                                                                      | Connection Pool Timeout, in seconds                                                             |
| dialect_name                                             | string                                                                       | (Read/Write) SQL Dialect name                                                                   |
| supports_data_studio_linklock boolean                    | Database connection has the ability to support open data studio from explore |                                                                                                 |
| created_at                                               | lock string                                                                  | Creation date for this connection Id of user who last modified this connection                  |
| user_id                                                  | lock string                                                                  | configuration                                                                                   |
| example                                                  | lock boolean                                                                 | Is this an example connection?                                                                  |

| (Limited access feature) Are per user db credentials                            |                                                                                                            |                                                                                                        |
|---------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| user_db_credentials                                                             | boolean                                                                                                    | enabled. Enabling will remove previously set username and password                                     |
| user_attribute_fields                                                           | string[]                                                                                                   | Cron string specifying when maintenance such as                                                        |
| maintenance_cron                                                                | string                                                                                                     | PDT trigger checks and drops should be performed Unix timestamp at start of last completed PDT trigger |
| last_regen_at                                                                   | lock string                                                                                                | check process Unix timestamp at start of last completed PDT reap                                       |
| last_reap_at                                                                    | lock string                                                                                                | process                                                                                                |
| sql_runner_precache_tables                                                      | boolean                                                                                                    | Precache tables in the SQL Runner                                                                      |
| sql_writing_with_info_schema                                                    | boolean                                                                                                    | Fetch Information Schema For SQL Writing                                                               |
| SQL statements (semicolon separated) to issue after connecting to the database. |                                                                                                            |                                                                                                        |
| after_connect_statements                                                        | string                                                                                                     | Requires `custom_after_connect_statements` license feature                                             |
| DBConnectionOv erride  (/looker/docs/refe rence/lookerapi/latest/types/D BConnectionOverri de) db_connection_override for this connection in the                                                                                 |                                                                                                            |                                                                                                        |
| pdt_context_override                                                            | `pdt` maintenance context                                                                                  |                                                                                                        |
| add_circle                                                                      | Expand DBConnectionOverride definition... Context in which to override (`pdt` is the only allowed          |                                                                                                        |
| context                                                                         | string                                                                                                     | value)                                                                                                 |
| host                                                                            | string                                                                                                     | Host name/address of server                                                                            |
| port                                                                            | string                                                                                                     | Port number on server                                                                                  |
| username                                                                        | string                                                                                                     | Username for server authentication                                                                     |
| password                                                                        | string                                                                                                     | (Write-Only) Password for server authentication                                                        |
| has_passwordlock boolean                                                        | Whether or not the password is overridden in this context (Write-Only) Base64 encoded Certificate body for |                                                                                                        |
| certificate                                                                     | string                                                                                                     | server authentication (when appropriate for dialect).                                                  |
| file_type                                                                       | string                                                                                                     | (Write-Only) Certificate keyfile type - .json or .p12                                                  |
| database                                                                        | string                                                                                                     | Database name                                                                                          |
| schema                                                                          | string                                                                                                     | Schema name Additional params to add to JDBC connection                                                |
| jdbc_additional_params                                                          | string                                                                                                     | string                                                                                                 |

| SQL statements (semicolon separated) to issue after connecting to the database.   |                                                                          |                                                                                                                                                              |
|-----------------------------------------------------------------------------------|--------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| after_connect_statements                                                          | string                                                                   | Requires `custom_after_connect_statements` license feature                                                                                                   |
| managed                                                                           | lock boolean                                                             | Is this connection created and managed by Looker This field is only applicable to connections over an SSH Tunnel. The value of this field would be the local |
| custom_local_port                                                                 | integer                                                                  | port associated with the SSH tunnel if configured manually. Otherwise either enter NULL or exclude this field.                                               |
| tunnel_id                                                                         | string                                                                   | The Id of the ssh tunnel this connection uses                                                                                                                |
| uses_tns                                                                          | boolean                                                                  | Enable Transparent Network Substrate (TNS) connections Maximum number of threads to use to build PDTs in                                                     |
| pdt_concurrency                                                                   | integer                                                                  | parallel                                                                                                                                                     |
| disable_context_comment                                                           | boolean                                                                  | When disable_context_comment is true comment will not be added to SQL                                                                                        |
| An External OAuth Application to use for                                          |                                                                          |                                                                                                                                                              |
| oauth_application_id                                                              | string                                                                   | authenticating to the database                                                                                                                               |
| always_retry_failed_builds                                                        | boolean                                                                  | When true, error PDTs will be retried every regenerator cycle Whether the connection should authenticate with the Application                                |
| uses_application_default_credentials                                              | boolean                                                                  | Default Credentials of the host environment (limited to GCP and certain dialects).                                                                           |
| An alternative Service Account to use for querying datasets (used primarily with  |                                                                          |                                                                                                                                                              |
| impersonated_service_account                                                      | string                                                                   | `uses_application_default_credentials`) (limited to GCP and certain dialects).                                                                               |
| cost_estimate_enabled                                                             | boolean                                                                  | When true, query cost estimate will be displayed in explore.                                                                                                 |
| pdt_api_control_enabled                                                           | boolean                                                                  | PDT builds on this connection can be kicked off and cancelled via API.                                                                                       |
| connection_pooling                                                                | boolean                                                                  | Enable database connection pooling.                                                                                                                          |
| default_bq_connectionlock boolean                                                 | When true, represents that this connection is the default BQ connection. |                                                                                                                                                              |

| The project id of the default BigQuery storage project.   |                                                                  |
|-----------------------------------------------------------|------------------------------------------------------------------|
| bq_roles_verifiedlock boolean                             | When true, represents that all project roles have been verified. |

## Examples

| TypeScript Kotlin (#kotlin)Swift (#swift) (#typescript) https://github.com/looker-open-source/sdk-codegen/blob/main/examples/typescript/testDBConnections.ts  (https://github.com/looker-open-source/sdkcodegen/blob/main/examples/typescript/testDBConnections.ts#L17) https://github.com/looker-open-source/sdk-codegen/blob/main/packages/extensionsdk/src/sdk/extension_sdk.spec.ts  (https://github.com/looker-open-source/sdk-codegen/blob/main/packages/extensionsdk/src/sdk/extension_sdk.spec.ts#L125) https://github.com/looker-open-source/sdk-codegen/blob/main/packages/extensionsdk/src/sdk/extension_sdk.spec.ts  (https://github.com/looker-open-source/sdk-codegen/blob/main/packages/extensionsdk/src/sdk/extension_sdk.spec.ts#L137) Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License  (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License   |
|---|

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.