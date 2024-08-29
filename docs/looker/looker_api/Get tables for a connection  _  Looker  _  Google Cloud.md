Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get Tables For A Connection

Version 4.0.24.14 (latest)
Get the list of tables for a schema For dialects that support multiple databases, optionally identify which to use. If not provided, the default database for the connection will be used.

For dialects that do not support multiple databases, **do not use** the database parameter

## Request

GET /connections/{connection_name}/tables

| Datatype        | Description                     |                                                                        |
|-----------------|---------------------------------|------------------------------------------------------------------------|
| Request         | HTTP Request                    |                                                                        |
| path            | HTTP Path                       |                                                                        |
| add_circle      | Expand HTTP Path definition...  |                                                                        |
| connection_name | string                          | Name of connection                                                     |
| query           | HTTP Query                      |                                                                        |
| add_circle      | Expand HTTP Query definition... | Optional. Name of database to use for the query, only                  |
| database        | string                          | if applicable                                                          |
| schema_name     | string                          | Optional. Return only tables for this schema                           |
| cache           | boolean                         | True to fetch from cache, false to load fresh                          |
| fields          | string                          | Requested fields. Optional. Return tables with names that contain this |
| table_filter    | string                          | value                                                                  |
| table_limit     | integer                         | Optional. Return tables up to the table_limit                          |

Response

200: Schemas and tables for …

 (#200:-schemas-and-tables-for-connection)

400: Bad Request… 404: Not Found… 422: Validation Er

| (#200:-schemas-and-tables-for-connection) Datatype Description SchemaTables  (/looker/docs/refer ence/lookerapi/latest/types/Sch emaTables) [] (array) name lock string Schema name is_default lock boolean True if this is the default schema SchemaTable  (/looker/docs/refer ence/lookerapi/latest/types/Sch emaTable) [] add_circle Expand SchemaTable definition... name lock string Schema item name sql_escaped_namelock string Full name of item schema_namelock string Name of schema rows lock integer Number of data rows external lock string External reference??? tables Snippet  (/looker/docs/refer ence/lookerapi/latest/types/Sni ppet) [] add_circle Expand Snippet definition... name lock string Name of the snippet label lock string Label of the snippet sql lock string SQL text of the snippet snippets table_limit_hit lock boolean True if the table limit was hit while retrieving tables in this schema   |
|---|

(array)
tables Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.