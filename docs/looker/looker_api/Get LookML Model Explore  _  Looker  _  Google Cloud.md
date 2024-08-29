Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get Lookml Model Explore

Version 4.0.24.14 (latest)
Get information about a lookml model explore.

Request GET /lookml_models/{lookml_model_name}/explores/{explore_name}

Datatype **Description**

Request HTTP Request path HTTP Path

add_circle Expand HTTP Path definition...

lookml_model_name string Name of lookml model. explore_name string Name of explore.

query HTTP Query

add_circle Expand HTTP Query definition...

fields string Requested fields.

add_drills_metadata boolean Whether response should include drill field metadata.

Response

```
200: LookML Model Explore
                        
   (#200:-lookml-model-explore)
                        400: Bad Request… 404: Not Found… 429: Too Many Reque

```

(object)

| Datatype            | Description   |
|---------------------|---------------|
| LookmlModelExpl ore |               |

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExplore)

| ence/lookerapi/latest/types/Lo okmlModelExplore) Fully qualified explore name (model name plus                                    |                                                                                             |                                                             |
|------------------------------------|---------------------------------------------------------------------------------------------|-------------------------------------------------------------|
| id                                 | lock string                                                                                 | explore name)                                               |
| name                               | lock string                                                                                 | Explore name                                                |
| description                        | lock string                                                                                 | Description                                                 |
| label                              | lock string                                                                                 | Label                                                       |
| title                              | lock string                                                                                 | Explore title                                               |
| scopes                             | string[]                                                                                    |                                                             |
| can_total                          | lock boolean                                                                                | Can Total                                                   |
| can_develop                        | lock boolean                                                                                | Can Develop LookML                                          |
| can_see_lookml lock boolean        | Can See LookML A URL linking to the definition of this explore in the                       |                                                             |
| lookml_link                        | lock string                                                                                 | LookML IDE.                                                 |
| can_save                           | lock boolean                                                                                | Can Save                                                    |
| can_explain                        | lock boolean                                                                                | Can Explain                                                 |
| can_pivot_in_db lock boolean       | Can pivot in the DB                                                                         |                                                             |
| can_subtotal                       | lock boolean                                                                                | Can use subtotals                                           |
| has_timezone_supportlock boolean   | Has timezone support                                                                        |                                                             |
| supports_cost_estimatelock boolean | Cost estimates supported                                                                    |                                                             |
| connection_namelock string         | Connection name How nulls are sorted, possible values are "low",                            |                                                             |
| null_sort_treatmentlock string     | "high", "first" and "last"                                                                  |                                                             |
| files                              | string[]                                                                                    |                                                             |
| source_file                        | lock string                                                                                 | Primary source_file file                                    |
| project_name                       | lock string                                                                                 | Name of project                                             |
| model_name                         | lock string                                                                                 | Name of model                                               |
| view_name                          | lock string                                                                                 | Name of view                                                |
| hidden                             | lock boolean                                                                                | Is hidden A sql_table_name expression that defines what sql |
| sql_table_name lock string         | table the view/explore maps onto. Example: "prod_orders2 AS orders" in a view named orders. |                                                             |
| access_filter_fields               | string[]                                                                                    |                                                             |
| LookmlModelExpl oreAccessFilter    |                                                                                             |                                                             |

access_filters

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreA

ccessFilter)

[]

add_circle Expand LookmlModelExploreAccessFilter definition...

field lock string Field to be filtered

user_attributelock string User attribute name

| add_circle                                    | Expand LookmlModelExploreAccessFilter definition...   |                      |
|-----------------------------------------------|-------------------------------------------------------|----------------------|
| field                                         | lock string                                           | Field to be filtered |
| user_attributelock string                     | User attribute name                                   |                      |
| LookmlModelExpl oreAlias  (/looker/docs/refer |                                                       |                      |

oreAlias

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreA

lias)

[]

add_circle Expand LookmlModelExploreAlias definition...

name lock string Name value lock string Value

aliases

| LookmlModelExpl oreAlwaysFilter  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreA lwaysFilter)   |
|---|

always_filter

oreAlwaysFilter

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreA

lwaysFilter)

[]

add_circle Expand LookmlModelExploreAlwaysFilter definition...

name lock string Name

value lock string Value

(/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExplore

ConditionallyFilter)

[]

add_circle Expand LookmlModelExploreConditionallyFilter definition...

| add_circle                                                  | Expand LookmlModelExploreAlwaysFilter definition...   |       |
|-------------------------------------------------------------|-------------------------------------------------------|-------|
| name                                                        | lock string                                           | Name  |
| value                                                       | lock string                                           | Value |
| LookmlModelExp loreConditionally Filter (/looker/docs/refer |                                                       |       |
| conditionally_filter                                        |                                                       |       |

conditionally_filter

| name         | lock string                                                              | Name                  |
|--------------|--------------------------------------------------------------------------|-----------------------|
| value        | lock string                                                              | Value                 |
| index_fields | string[] LookmlModelExpl oreSet  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreS et) []                                                                          |                       |
| add_circle   | Expand LookmlModelExploreSet definition...                               |                       |
| name         | lock string                                                              | Name                  |
| value        | string[]                                                                 |                       |
| sets tags    | string[] LookmlModelExpl oreError  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreE rror) []                                                                          |                       |
| add_circle   | Expand LookmlModelExploreError definition...                             |                       |
| message      | lock string                                                              | Error Message         |
| details      | lock any                                                                 | Details               |
| error_pos    | lock string                                                              | Error source location |
| field_error  | lock boolean                                                             | Is this a field error |
| errors       | LookmlModelExpl oreFieldset  (/looker/docs/refer                         |                       |
| fields       | lock ence/lookerapi/latest/types/Lo okmlModelExploreFi eldset) Fields                                                                          |                       |
| add_circle   | Expand LookmlModelExploreFieldset definition... LookmlModelExpl oreField |                       |

dimensions

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreFi

eld)

[]

add_circle Expand LookmlModelExploreField definition...

| []                                                    |                                                                                                          |                                                                                                                        |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| add_circle                                            | Expand LookmlModelExploreField definition... The appropriate horizontal text alignment the values        |                                                                                                                        |
| align                                                 | lock string                                                                                              | of this field should be displayed in. Valid values are: "left", "right".                                               |
| can_filterlock boolean                                | Whether it's possible to filter on this field. Field category Valid values are: "parameter", "filter",   |                                                                                                                        |
| categorylock string                                   | "measure", "dimension". The default value that this field uses when                                      |                                                                                                                        |
| default_filter_valuelock string                       | filtering. Null if there is no default value.                                                            |                                                                                                                        |
| descriptionlock string                                | Description Dimension group if this field is part of a                                                   |                                                                                                                        |
| dimension_grouplock string                            | dimension group. If not, this will be null.                                                              |                                                                                                                        |
| drill_fields                                          | string[] LookmlModelEx ploreFieldEnum eration (/looker/docs/refe rence/lookerapi/latest/types/L ookmlModelExplor eFieldEnumeration ) []                                                                                                          |                                                                                                                        |
| enumerations                                          | An error message indicating a problem with the                                                           |                                                                                                                        |
| error                                                 | lock string                                                                                              | definition of this field. If there are no errors, this will be null. A label creating a grouping of fields. All fields |
| field_group_labellock string                          | with this label should be presented together when displayed in a UI. When presented in a field group via |                                                                                                                        |
| field_group_variantlock string                        | field_group_label, a shorter name of the field to be displayed in that context.                          |                                                                                                                        |
| The style of dimension fill that is possible for this |                                                                                                          |                                                                                                                        |
| fill_stylelock string                                 | field. Null if no dimension fill is possible. Valid values are: "enumeration", "range".                  |                                                                                                                        |

fiscal_month_offsetlock integer An offset (in months) from the calendar start month to the fiscal start month defined in the LookML model this field belongs to.

has_allowed_valueslock boolean Whether this field has a set of allowed_values specified in LookML.

| has_drills_metadatalock boolean   | Whether this field has links or drill fields defined.            |
|-----------------------------------|------------------------------------------------------------------|
| hidden lock boolean               | Whether this field should be hidden from the user interface.     |
| is_filter lock boolean            | Whether this field is a filter.                                  |
| is_fiscallock boolean             | Whether this field represents a fiscal time value.               |
| is_numericlock boolean            | Whether this field is of a type that represents a numeric value. |
| is_timeframelock boolean          | Whether this field is of a type that represents a time value.    |
| can_time_filterlock boolean       | Whether this field can be time filtered.                         |

time_intervallock LookmlModelEx ploreFieldTimeIn terval
 (/looker/docs/refe rence/lookerapi/latest/types/L
ookmlModelExplor eFieldTimeInterval)
Details on the time interval this field represents, if it is_timeframe.

label lock string Fully-qualified human-readable label of the field.

label_from_parameterlock string The name of the parameter that will provide a parameterized label for this field, if available in the current context.

label_shortlock string

The human-readable label of the field, without the view label.

lookml_linklock string

A URL linking to the definition of this field in the LookML IDE.

links LookmlFieldLink
 (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlFieldLink)
[]
LookmlModelExp loreFieldMapLay

| map_layerlock er (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreF ieldMapLayer) If applicable, a map layer this field is associated with. measurelock boolean Whether this field is a measure. name lock string Fully-qualified name of the field. strict_value_formatlock boolean If yes, the field will not be localized with the user attribute number_format. Defaults to no parameterlock boolean Whether this field is a parameter. permanentlock boolean Whether this field can be removed from a query. primary_keylock boolean Whether or not the field represents a primary key. project_namelock string The name of the project this field is defined in. When true, it's not possible to re-sort this field's values without re-running the SQL requires_refresh_on_sortlock boolean query, due to database logic that affects the sort. The LookML scope this field belongs to. The scope is scope lock string typically the field's view. sortablelock boolean Whether this field can be sorted. source_filelock string The path portion of source_file_path. The fully-qualified path of the project file this source_file_pathlock string field is defined in. SQL expression as defined in the LookML model. The SQL syntax shown here is a representation intended for auditability, and is not neccessarily an exact match for what will ultimately be run in the database. It may sql lock string contain special LookML syntax or annotations that are not valid SQL. This will be null if the current user does not have the see_lookml permission for the field's model. LookmlModelExpl oreFieldSqlCase  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldSqlCase) []sql_case   |
|---|

| LookmlModelExpl oreFieldMeasureF ilters  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldMeasureFilters) []                                                 |                                                                                                                                    |                                                                                            |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| filters                                         | The name of the dimension to base suggest                                                                                          |                                                                                            |
| suggest_dimensionlock string                    | queries from.                                                                                                                      |                                                                                            |
| The name of the explore to base suggest         |                                                                                                                                    |                                                                                            |
| suggest_explorelock string                      | queries from.                                                                                                                      |                                                                                            |
| suggestablelock boolean                         | Whether or not suggestions are possible for this field.                                                                            |                                                                                            |
| suggestions                                     | string[]                                                                                                                           |                                                                                            |
| tags                                            | string[]                                                                                                                           |                                                                                            |
| type                                            | lock string                                                                                                                        | The LookML type of the field.                                                              |
| user_attribute_filter_types                     | string[] If specified, the LookML value format string for                                                                          |                                                                                            |
| value_formatlock string                         | formatting values of this field.                                                                                                   |                                                                                            |
| view                                            | lock string                                                                                                                        | The name of the view this field belongs to. The human-readable label of the view the field |
| view_labellock string                           | belongs to.                                                                                                                        |                                                                                            |
| dynamiclock boolean                             | Whether this field was specified in "dynamic_fields" and is not part of the model. The name of the starting day of the week. Valid |                                                                                            |
| week_start_daylock string                       | values are: "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday".                                          |                                                                                            |
| The number of times this field has been used in |                                                                                                                                    |                                                                                            |
| times_usedlock integer                          | queries The name of the view this field is defined in. This will be different than "view" when the view has                        |                                                                                            |
| original_viewlock string                        | been joined via a different name using the "from" parameter.                                                                       |                                                                                            |
| LookmlModelExpl oreField                        |                                                                                                                                    |                                                                                            |

measures

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreFi

eld)

[]

add_circle Expand LookmlModelExploreField definition...

| []                                                    |                                                                                                          |                                                                                                                        |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| add_circle                                            | Expand LookmlModelExploreField definition... The appropriate horizontal text alignment the values        |                                                                                                                        |
| align                                                 | lock string                                                                                              | of this field should be displayed in. Valid values are: "left", "right".                                               |
| can_filterlock boolean                                | Whether it's possible to filter on this field. Field category Valid values are: "parameter", "filter",   |                                                                                                                        |
| categorylock string                                   | "measure", "dimension". The default value that this field uses when                                      |                                                                                                                        |
| default_filter_valuelock string                       | filtering. Null if there is no default value.                                                            |                                                                                                                        |
| descriptionlock string                                | Description Dimension group if this field is part of a                                                   |                                                                                                                        |
| dimension_grouplock string                            | dimension group. If not, this will be null.                                                              |                                                                                                                        |
| drill_fields                                          | string[] LookmlModelEx ploreFieldEnum eration (/looker/docs/refe rence/lookerapi/latest/types/L ookmlModelExplor eFieldEnumeration ) []                                                                                                          |                                                                                                                        |
| enumerations                                          | An error message indicating a problem with the                                                           |                                                                                                                        |
| error                                                 | lock string                                                                                              | definition of this field. If there are no errors, this will be null. A label creating a grouping of fields. All fields |
| field_group_labellock string                          | with this label should be presented together when displayed in a UI. When presented in a field group via |                                                                                                                        |
| field_group_variantlock string                        | field_group_label, a shorter name of the field to be displayed in that context.                          |                                                                                                                        |
| The style of dimension fill that is possible for this |                                                                                                          |                                                                                                                        |
| fill_stylelock string                                 | field. Null if no dimension fill is possible. Valid values are: "enumeration", "range".                  |                                                                                                                        |

fiscal_month_offsetlock integer An offset (in months) from the calendar start month to the fiscal start month defined in the LookML model this field belongs to.

has_allowed_valueslock boolean Whether this field has a set of allowed_values specified in LookML.

| has_drills_metadatalock boolean   | Whether this field has links or drill fields defined.            |
|-----------------------------------|------------------------------------------------------------------|
| hidden lock boolean               | Whether this field should be hidden from the user interface.     |
| is_filter lock boolean            | Whether this field is a filter.                                  |
| is_fiscallock boolean             | Whether this field represents a fiscal time value.               |
| is_numericlock boolean            | Whether this field is of a type that represents a numeric value. |
| is_timeframelock boolean          | Whether this field is of a type that represents a time value.    |
| can_time_filterlock boolean       | Whether this field can be time filtered.                         |

time_intervallock LookmlModelEx ploreFieldTimeIn terval
 (/looker/docs/refe rence/lookerapi/latest/types/L
ookmlModelExplor eFieldTimeInterval)
Details on the time interval this field represents, if it is_timeframe.

label lock string Fully-qualified human-readable label of the field.

label_from_parameterlock string The name of the parameter that will provide a parameterized label for this field, if available in the current context.

label_shortlock string

The human-readable label of the field, without the view label.

lookml_linklock string

A URL linking to the definition of this field in the LookML IDE.

links LookmlFieldLink
 (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlFieldLink)
[]
LookmlModelExp loreFieldMapLay

| map_layerlock er (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreF ieldMapLayer) If applicable, a map layer this field is associated with. measurelock boolean Whether this field is a measure. name lock string Fully-qualified name of the field. strict_value_formatlock boolean If yes, the field will not be localized with the user attribute number_format. Defaults to no parameterlock boolean Whether this field is a parameter. permanentlock boolean Whether this field can be removed from a query. primary_keylock boolean Whether or not the field represents a primary key. project_namelock string The name of the project this field is defined in. When true, it's not possible to re-sort this field's values without re-running the SQL requires_refresh_on_sortlock boolean query, due to database logic that affects the sort. The LookML scope this field belongs to. The scope is scope lock string typically the field's view. sortablelock boolean Whether this field can be sorted. source_filelock string The path portion of source_file_path. The fully-qualified path of the project file this source_file_pathlock string field is defined in. SQL expression as defined in the LookML model. The SQL syntax shown here is a representation intended for auditability, and is not neccessarily an exact match for what will ultimately be run in the database. It may sql lock string contain special LookML syntax or annotations that are not valid SQL. This will be null if the current user does not have the see_lookml permission for the field's model. LookmlModelExpl oreFieldSqlCase  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldSqlCase) []sql_case   |
|---|

| LookmlModelExpl oreFieldMeasureF ilters  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldMeasureFilters) []                                                 |                                                                                                                                    |                                                                                            |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| filters                                         | The name of the dimension to base suggest                                                                                          |                                                                                            |
| suggest_dimensionlock string                    | queries from.                                                                                                                      |                                                                                            |
| The name of the explore to base suggest         |                                                                                                                                    |                                                                                            |
| suggest_explorelock string                      | queries from.                                                                                                                      |                                                                                            |
| suggestablelock boolean                         | Whether or not suggestions are possible for this field.                                                                            |                                                                                            |
| suggestions                                     | string[]                                                                                                                           |                                                                                            |
| tags                                            | string[]                                                                                                                           |                                                                                            |
| type                                            | lock string                                                                                                                        | The LookML type of the field.                                                              |
| user_attribute_filter_types                     | string[] If specified, the LookML value format string for                                                                          |                                                                                            |
| value_formatlock string                         | formatting values of this field.                                                                                                   |                                                                                            |
| view                                            | lock string                                                                                                                        | The name of the view this field belongs to. The human-readable label of the view the field |
| view_labellock string                           | belongs to.                                                                                                                        |                                                                                            |
| dynamiclock boolean                             | Whether this field was specified in "dynamic_fields" and is not part of the model. The name of the starting day of the week. Valid |                                                                                            |
| week_start_daylock string                       | values are: "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday".                                          |                                                                                            |
| The number of times this field has been used in |                                                                                                                                    |                                                                                            |
| times_usedlock integer                          | queries The name of the view this field is defined in. This will be different than "view" when the view has                        |                                                                                            |
| original_viewlock string                        | been joined via a different name using the "from" parameter.                                                                       |                                                                                            |
| LookmlModelExpl oreField                        |                                                                                                                                    |                                                                                            |

filters

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreFi

eld)

[]

add_circle Expand LookmlModelExploreField definition...

| []                                                    |                                                                                                          |                                                                                                                        |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| add_circle                                            | Expand LookmlModelExploreField definition... The appropriate horizontal text alignment the values        |                                                                                                                        |
| align                                                 | lock string                                                                                              | of this field should be displayed in. Valid values are: "left", "right".                                               |
| can_filterlock boolean                                | Whether it's possible to filter on this field. Field category Valid values are: "parameter", "filter",   |                                                                                                                        |
| categorylock string                                   | "measure", "dimension". The default value that this field uses when                                      |                                                                                                                        |
| default_filter_valuelock string                       | filtering. Null if there is no default value.                                                            |                                                                                                                        |
| descriptionlock string                                | Description Dimension group if this field is part of a                                                   |                                                                                                                        |
| dimension_grouplock string                            | dimension group. If not, this will be null.                                                              |                                                                                                                        |
| drill_fields                                          | string[] LookmlModelEx ploreFieldEnum eration (/looker/docs/refe rence/lookerapi/latest/types/L ookmlModelExplor eFieldEnumeration ) []                                                                                                          |                                                                                                                        |
| enumerations                                          | An error message indicating a problem with the                                                           |                                                                                                                        |
| error                                                 | lock string                                                                                              | definition of this field. If there are no errors, this will be null. A label creating a grouping of fields. All fields |
| field_group_labellock string                          | with this label should be presented together when displayed in a UI. When presented in a field group via |                                                                                                                        |
| field_group_variantlock string                        | field_group_label, a shorter name of the field to be displayed in that context.                          |                                                                                                                        |
| The style of dimension fill that is possible for this |                                                                                                          |                                                                                                                        |
| fill_stylelock string                                 | field. Null if no dimension fill is possible. Valid values are: "enumeration", "range".                  |                                                                                                                        |

fiscal_month_offsetlock integer An offset (in months) from the calendar start month to the fiscal start month defined in the LookML model this field belongs to.

has_allowed_valueslock boolean Whether this field has a set of allowed_values specified in LookML.

| has_drills_metadatalock boolean   | Whether this field has links or drill fields defined.            |
|-----------------------------------|------------------------------------------------------------------|
| hidden lock boolean               | Whether this field should be hidden from the user interface.     |
| is_filter lock boolean            | Whether this field is a filter.                                  |
| is_fiscallock boolean             | Whether this field represents a fiscal time value.               |
| is_numericlock boolean            | Whether this field is of a type that represents a numeric value. |
| is_timeframelock boolean          | Whether this field is of a type that represents a time value.    |
| can_time_filterlock boolean       | Whether this field can be time filtered.                         |

time_intervallock LookmlModelEx ploreFieldTimeIn terval
 (/looker/docs/refe rence/lookerapi/latest/types/L
ookmlModelExplor eFieldTimeInterval)
Details on the time interval this field represents, if it is_timeframe.

label lock string Fully-qualified human-readable label of the field.

label_from_parameterlock string The name of the parameter that will provide a parameterized label for this field, if available in the current context.

label_shortlock string

The human-readable label of the field, without the view label.

lookml_linklock string

A URL linking to the definition of this field in the LookML IDE.

links LookmlFieldLink
 (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlFieldLink)
[]
LookmlModelExp loreFieldMapLay

| map_layerlock er (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreF ieldMapLayer) If applicable, a map layer this field is associated with. measurelock boolean Whether this field is a measure. name lock string Fully-qualified name of the field. strict_value_formatlock boolean If yes, the field will not be localized with the user attribute number_format. Defaults to no parameterlock boolean Whether this field is a parameter. permanentlock boolean Whether this field can be removed from a query. primary_keylock boolean Whether or not the field represents a primary key. project_namelock string The name of the project this field is defined in. When true, it's not possible to re-sort this field's values without re-running the SQL requires_refresh_on_sortlock boolean query, due to database logic that affects the sort. The LookML scope this field belongs to. The scope is scope lock string typically the field's view. sortablelock boolean Whether this field can be sorted. source_filelock string The path portion of source_file_path. The fully-qualified path of the project file this source_file_pathlock string field is defined in. SQL expression as defined in the LookML model. The SQL syntax shown here is a representation intended for auditability, and is not neccessarily an exact match for what will ultimately be run in the database. It may sql lock string contain special LookML syntax or annotations that are not valid SQL. This will be null if the current user does not have the see_lookml permission for the field's model. LookmlModelExpl oreFieldSqlCase  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldSqlCase) []sql_case   |
|---|

| LookmlModelExpl oreFieldMeasureF ilters  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldMeasureFilters) []                                                 |                                                                                                                                    |                                                                                            |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| filters                                         | The name of the dimension to base suggest                                                                                          |                                                                                            |
| suggest_dimensionlock string                    | queries from.                                                                                                                      |                                                                                            |
| The name of the explore to base suggest         |                                                                                                                                    |                                                                                            |
| suggest_explorelock string                      | queries from.                                                                                                                      |                                                                                            |
| suggestablelock boolean                         | Whether or not suggestions are possible for this field.                                                                            |                                                                                            |
| suggestions                                     | string[]                                                                                                                           |                                                                                            |
| tags                                            | string[]                                                                                                                           |                                                                                            |
| type                                            | lock string                                                                                                                        | The LookML type of the field.                                                              |
| user_attribute_filter_types                     | string[] If specified, the LookML value format string for                                                                          |                                                                                            |
| value_formatlock string                         | formatting values of this field.                                                                                                   |                                                                                            |
| view                                            | lock string                                                                                                                        | The name of the view this field belongs to. The human-readable label of the view the field |
| view_labellock string                           | belongs to.                                                                                                                        |                                                                                            |
| dynamiclock boolean                             | Whether this field was specified in "dynamic_fields" and is not part of the model. The name of the starting day of the week. Valid |                                                                                            |
| week_start_daylock string                       | values are: "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday".                                          |                                                                                            |
| The number of times this field has been used in |                                                                                                                                    |                                                                                            |
| times_usedlock integer                          | queries The name of the view this field is defined in. This will be different than "view" when the view has                        |                                                                                            |
| original_viewlock string                        | been joined via a different name using the "from" parameter.                                                                       |                                                                                            |
| LookmlModelExpl oreField                        |                                                                                                                                    |                                                                                            |

parameters

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreFi

eld)

[]

add_circle Expand LookmlModelExploreField definition...

| []                                                    |                                                                                                          |                                                                                                                        |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| add_circle                                            | Expand LookmlModelExploreField definition... The appropriate horizontal text alignment the values        |                                                                                                                        |
| align                                                 | lock string                                                                                              | of this field should be displayed in. Valid values are: "left", "right".                                               |
| can_filterlock boolean                                | Whether it's possible to filter on this field. Field category Valid values are: "parameter", "filter",   |                                                                                                                        |
| categorylock string                                   | "measure", "dimension". The default value that this field uses when                                      |                                                                                                                        |
| default_filter_valuelock string                       | filtering. Null if there is no default value.                                                            |                                                                                                                        |
| descriptionlock string                                | Description Dimension group if this field is part of a                                                   |                                                                                                                        |
| dimension_grouplock string                            | dimension group. If not, this will be null.                                                              |                                                                                                                        |
| drill_fields                                          | string[] LookmlModelEx ploreFieldEnum eration (/looker/docs/refe rence/lookerapi/latest/types/L ookmlModelExplor eFieldEnumeration ) []                                                                                                          |                                                                                                                        |
| enumerations                                          | An error message indicating a problem with the                                                           |                                                                                                                        |
| error                                                 | lock string                                                                                              | definition of this field. If there are no errors, this will be null. A label creating a grouping of fields. All fields |
| field_group_labellock string                          | with this label should be presented together when displayed in a UI. When presented in a field group via |                                                                                                                        |
| field_group_variantlock string                        | field_group_label, a shorter name of the field to be displayed in that context.                          |                                                                                                                        |
| The style of dimension fill that is possible for this |                                                                                                          |                                                                                                                        |
| fill_stylelock string                                 | field. Null if no dimension fill is possible. Valid values are: "enumeration", "range".                  |                                                                                                                        |

fiscal_month_offsetlock integer An offset (in months) from the calendar start month to the fiscal start month defined in the LookML model this field belongs to.

has_allowed_valueslock boolean Whether this field has a set of allowed_values specified in LookML.

| has_drills_metadatalock boolean   | Whether this field has links or drill fields defined.            |
|-----------------------------------|------------------------------------------------------------------|
| hidden lock boolean               | Whether this field should be hidden from the user interface.     |
| is_filter lock boolean            | Whether this field is a filter.                                  |
| is_fiscallock boolean             | Whether this field represents a fiscal time value.               |
| is_numericlock boolean            | Whether this field is of a type that represents a numeric value. |
| is_timeframelock boolean          | Whether this field is of a type that represents a time value.    |
| can_time_filterlock boolean       | Whether this field can be time filtered.                         |

time_intervallock LookmlModelEx ploreFieldTimeIn terval
 (/looker/docs/refe rence/lookerapi/latest/types/L
ookmlModelExplor eFieldTimeInterval)
Details on the time interval this field represents, if it is_timeframe.

label lock string Fully-qualified human-readable label of the field.

label_from_parameterlock string The name of the parameter that will provide a parameterized label for this field, if available in the current context.

label_shortlock string

The human-readable label of the field, without the view label.

lookml_linklock string

A URL linking to the definition of this field in the LookML IDE.

links LookmlFieldLink
 (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlFieldLink)
[]
LookmlModelExp loreFieldMapLay

| map_layerlock er (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreF ieldMapLayer) If applicable, a map layer this field is associated with. measurelock boolean Whether this field is a measure. name lock string Fully-qualified name of the field. strict_value_formatlock boolean If yes, the field will not be localized with the user attribute number_format. Defaults to no parameterlock boolean Whether this field is a parameter. permanentlock boolean Whether this field can be removed from a query. primary_keylock boolean Whether or not the field represents a primary key. project_namelock string The name of the project this field is defined in. When true, it's not possible to re-sort this field's values without re-running the SQL requires_refresh_on_sortlock boolean query, due to database logic that affects the sort. The LookML scope this field belongs to. The scope is scope lock string typically the field's view. sortablelock boolean Whether this field can be sorted. source_filelock string The path portion of source_file_path. The fully-qualified path of the project file this source_file_pathlock string field is defined in. SQL expression as defined in the LookML model. The SQL syntax shown here is a representation intended for auditability, and is not neccessarily an exact match for what will ultimately be run in the database. It may sql lock string contain special LookML syntax or annotations that are not valid SQL. This will be null if the current user does not have the see_lookml permission for the field's model. LookmlModelExpl oreFieldSqlCase  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldSqlCase) []sql_case   |
|---|

| LookmlModelExpl oreFieldMeasureF ilters  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModelExploreFi eldMeasureFilters) []                                                 |                                                                                                                                    |                                                                                            |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| filters                                         | The name of the dimension to base suggest                                                                                          |                                                                                            |
| suggest_dimensionlock string                    | queries from.                                                                                                                      |                                                                                            |
| The name of the explore to base suggest         |                                                                                                                                    |                                                                                            |
| suggest_explorelock string                      | queries from.                                                                                                                      |                                                                                            |
| suggestablelock boolean                         | Whether or not suggestions are possible for this field.                                                                            |                                                                                            |
| suggestions                                     | string[]                                                                                                                           |                                                                                            |
| tags                                            | string[]                                                                                                                           |                                                                                            |
| type                                            | lock string                                                                                                                        | The LookML type of the field.                                                              |
| user_attribute_filter_types                     | string[] If specified, the LookML value format string for                                                                          |                                                                                            |
| value_formatlock string                         | formatting values of this field.                                                                                                   |                                                                                            |
| view                                            | lock string                                                                                                                        | The name of the view this field belongs to. The human-readable label of the view the field |
| view_labellock string                           | belongs to.                                                                                                                        |                                                                                            |
| dynamiclock boolean                             | Whether this field was specified in "dynamic_fields" and is not part of the model. The name of the starting day of the week. Valid |                                                                                            |
| week_start_daylock string                       | values are: "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday".                                          |                                                                                            |
| The number of times this field has been used in |                                                                                                                                    |                                                                                            |
| times_usedlock integer                          | queries The name of the view this field is defined in. This will be different than "view" when the view has                        |                                                                                            |
| original_viewlock string                        | been joined via a different name using the "from" parameter.                                                                       |                                                                                            |
| LookmlModelExpl oreJoins                        |                                                                                                                                    |                                                                                            |

joins

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelExploreJ

oins)

[]

add_circle Expand LookmlModelExploreJoins definition...

name lock string Name of this join (and name of the view to join)

dependent_fields string[] fields string[]

| []                                               |                                                             |                                                                                            |
|--------------------------------------------------|-------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| add_circle                                       | Expand LookmlModelExploreJoins definition...                |                                                                                            |
| name                                             | lock string                                                 | Name of this join (and name of the view to join)                                           |
| dependent_fields                                 | string[]                                                    |                                                                                            |
| fields                                           | string[]                                                    | Name of the dimension in this explore whose value is                                       |
| foreign_key                                      | lock string                                                 | in the primary key of the joined view                                                      |
| from                                             | lock string                                                 | Name of view to join                                                                       |
| outer_only                                       | lock boolean                                                | Specifies whether all queries must use an outer join many_to_one, one_to_one, one_to_many, |
| relationship                                     | lock string                                                 | many_to_many                                                                               |
| required_joins                                   | string[]                                                    |                                                                                            |
| sql_foreign_keylock string                       | SQL expression that produces a foreign key                  |                                                                                            |
| sql_on                                           | lock string                                                 | SQL ON expression describing the join condition                                            |
| sql_table_namelock string                        | SQL table name to join                                      |                                                                                            |
| type                                             | lock string                                                 | The join type: left_outer, full_outer, inner, or cross                                     |
| view_label                                       | lock string                                                 | Label to display in UI selectors                                                           |
| group_label                                      | lock string                                                 | Label used to group explores in the navigation menus                                       |
| LookmlModelE xploreSupporte dMeasureType (/looker/docs/ref erence/lookerapi/latest/types/ LookmlModelExpl oreSupportedMe asureType) []                                                  |                                                             |                                                                                            |
| add_circle                                       | Expand LookmlModelExploreSupportedMeasureType definition... |                                                                                            |
| dimension_typelock string measure_types string[] |                                                             |                                                                                            |
| supported_measure_types always_join string[]     |                                                             |                                                                                            |

# Examples

Python

 (\#python)
https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/lookml_model_explore.py
 (https://github.com/looker-open-source/sdkcodegen/blob/main/examples/python/lookml_model_explore.py\#L14)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.