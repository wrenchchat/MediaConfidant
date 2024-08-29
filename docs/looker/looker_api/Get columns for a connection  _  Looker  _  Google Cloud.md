Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get Columns For A Connection

Version 4.0.24.14 (latest)
Get the columns (and therefore also the tables) in a specific schema Request

| GET /connections/{connection_name}/columns Datatype Description Request HTTP Request path HTTP Path add_circle Expand HTTP Path definition... connection_name string Name of connection query HTTP Query add_circle Expand HTTP Query definition... For dialects that support multiple databases, database string optionally identify which to use schema_name string Name of schema to use. cache boolean True to fetch from cache, false to load fresh table_limit integer limits the tables per schema returned only fetch columns for a given (comma-separated) list table_names string of tables fields string Requested fields.   |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

Response

| 200: Columns schema for co… 400: Bad Request…   | 404: Not Found…   | 422: Validation Er   |
|-------------------------------------------------|-------------------|----------------------|
| (#200:-columns-schema-for-connection) Datatype  | Description       |                      |

(array)
SchemaColumns
 (/looker/docs/refer ence/lookerapi/latest/types/Sch emaColumns)
[]
name lock string Schema item name sql_escaped_namelock string Full name of item schema_name lock string Name of schema columns

![1_image_0.png](1_image_0.png)

SchemaColumn
 (/looker/docs/refer ence/lookerapi/latest/types/Sch emaColumn)
[]
add_circle Expand SchemaColumn definition...

name lock string Schema item name sql_escaped_namelock string Full name of item schema_namelock string Name of schema data_type_databaselock string SQL dialect data type data_type lock string Data type data_type_lookerlock string Looker data type description lock string SQL data type column_size lock integer Column data size snippets

Snippet

![1_image_1.png](1_image_1.png)

![1_image_2.png](1_image_2.png)

![1_image_3.png](1_image_3.png)

 (/looker/docs/refer

ence/lookerapi/latest/types/Sni

ppet)

[]

add_circle Expand Snippet definition...

name lock string Name of the snippet

label lock string Label of the snippet

sql lock string SQL text of the snippet

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.