Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get Derived Table Graph For Model

Version 4.0.24.14 (latest)
Discover information about derived tables Request

| GET /derived_table/graph/model/{model} Datatype   | Description                     |                                                               |
|---------------------------------------------------|---------------------------------|---------------------------------------------------------------|
| Request                                           | HTTP Request                    |                                                               |
| path                                              | HTTP Path                       |                                                               |
| add_circle                                        | Expand HTTP Path definition...  |                                                               |
| model                                             | string                          | The name of the Lookml model.                                 |
| query                                             | HTTP Query                      |                                                               |
| add_circle                                        | Expand HTTP Query definition... | The format of the graph. Valid values are [dot]. Default      |
| format                                            | string                          | is `dot` Color denoting the build status of the graph. Grey = |
| color                                             | string                          | not built, green = built, yellow = building, red = error.     |

Response

| 200: Derived Table 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…   |
|----------------------------------------|-------------------|---------------------------|
| (#200:-derived-table)                  | Datatype          | Description               |
| DependencyGrap h                       |                   |                           |

(object)
 (/looker/docs/refer ence/lookerapi/latest/types/De pendencyGraph)
graph_text lock string The graph structure in the dot language that can be rendered into an image.

## Examples

TypeScript

 (\#typescript)
https://github.com/looker-open-source/sdk-codegen/blob/main/examples/typescript/dependencyGraph.ts
 (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/typescript/dependencyGraph.ts\#L11)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.