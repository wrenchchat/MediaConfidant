Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get subgraph of derived table and

# Dependencies

Version 4.0.24.14 (latest)
Get the subgraph representing this derived table and its dependencies.

Request

| GET /derived_table/graph/view/{view} Datatype   | Description                     |                                                                                                 |
|-------------------------------------------------|---------------------------------|-------------------------------------------------------------------------------------------------|
| Request                                         | HTTP Request                    |                                                                                                 |
| path                                            | HTTP Path                       |                                                                                                 |
| add_circle                                      | Expand HTTP Path definition...  |                                                                                                 |
| view                                            | string                          | The derived table's view name.                                                                  |
| query                                           | HTTP Query                      |                                                                                                 |
| add_circle                                      | Expand HTTP Query definition... |                                                                                                 |
| models                                          | string                          | The models where this derived table is defined. The model directory to look in, either `dev` or |
| workspace                                       | string                          | `production`.                                                                                   |

Response

```
200: Graph of the derived ta…
                          
   (#200:-graph-of-the-derived-table-component,-represented-in-the-dot-language.)
                          400: Bad Request… 404: Not Found… 429: Too Many Re

```

| Datatype         | Description   |
|------------------|---------------|
| DependencyGrap h |               |

(object)
 (/looker/docs/refer ence/lookerapi/latest/types/De pendencyGraph)
graph_text lock string The graph structure in the dot language that can be rendered into an image.

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.