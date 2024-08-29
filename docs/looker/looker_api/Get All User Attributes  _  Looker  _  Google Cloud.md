Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All User Attributes

Version 4.0.24.14 (latest)
Get information about all user attributes.

Request GET /user_attributes

| GET /user_attributes   | Datatype                        | Description                                                                |
|------------------------|---------------------------------|----------------------------------------------------------------------------|
| Request                | HTTP Request                    |                                                                            |
| query                  | HTTP Query                      |                                                                            |
| add_circle             | Expand HTTP Query definition... |                                                                            |
| fields                 | string                          | Requested fields. Fields to order the results by. Sortable fields include: |
| sorts                  | string                          | name, label                                                                |

## Response

| 200: User Attribute 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|-----------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-user-attribute)                  | Datatype          | Description                                                   |
| UserAttribute  (/looker/docs/refer ence/lookerapi/latest/types/Us erAttribute) []                                         |                   |                                                               |
| (array) can                             | lock object       | Operations the current user is able to perform on this object |
| id                                      | lock string       | Unique Id                                                     |

| name                          | string       | Name of user attribute                                                                               |
|-------------------------------|--------------|------------------------------------------------------------------------------------------------------|
| label                         | string       | Human-friendly label for user attribute Type of user attribute ("string", "number", "datetime",      |
| type                          | string       | "yesno", "zipcode", "advanced_filter_string", "advanced_filter_number")                              |
| default_value                 | string       | Default value for when no value is set on the user                                                   |
| is_system                     | lock boolean | Attribute is a system default                                                                        |
| is_permanent                  | lock boolean | Attribute is permanent and cannot be deleted                                                         |
| value_is_hidden               | boolean      | If true, users will not be able to view values of this attribute                                     |
| user_can_view                 | boolean      | Non-admin users can see the values of their attributes and use them in filters                       |
| user_can_edit                 | boolean      | Users can change the value of this attribute for themselves Destinations to which a hidden attribute |
| hidden_value_domain_whitelist | string       | may be sent. Once set, cannot be edited.                                                             |

## Examples

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L474)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.