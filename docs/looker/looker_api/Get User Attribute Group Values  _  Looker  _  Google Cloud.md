Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get User Attribute Group Values

Version 4.0.24.14 (latest)
Returns all values of a user attribute defined by user groups, in precedence order.

A user may be a member of multiple groups which define different values for a given user attribute. The order of group-values in the response determines precedence for selecting which group-value applies to a given user. For more information, see Set User Attribute Group Values
 (/looker/docs/reference/looker-api/latest/methods/UserAttribute/set_user_attribute_group_values).

Results will only include groups that the caller's user account has permission to see.

## Request

GET /user_attributes/{user_attribute_id}/group_values

| GET /user_attributes/{user_attribute_id}/group_values Datatype Description Request HTTP Request path HTTP Path add_circle Expand HTTP Path definition... user_attribute_id string Id of user attribute query HTTP Query add_circle Expand HTTP Query definition... fields string Requested fields.   |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

Response

```
200: All group values for attri…
                           
   (#200:-all-group-values-for-attribute.)
                          400: Bad Request… 404: Not Found… 429: Too Many Re

```

| Datatype                     | Description                                                                                        |                                                               |
|------------------------------|----------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
| UserAttributeGro upValue  (/looker/docs/refer ence/lookerapi/latest/types/Us erAttributeGroupVal ue) []                              |                                                                                                    |                                                               |
| (array) can                  | lock object                                                                                        | Operations the current user is able to perform on this object |
| id                           | lock string                                                                                        | Unique Id of this group-attribute relation                    |
| group_id                     | lock string                                                                                        | Id of group                                                   |
| user_attribute_idlock string | Id of user attribute                                                                               |                                                               |
| value_is_hidden lock boolean | If true, the "value" field will be null, because the attribute settings block access to this value |                                                               |
| rank                         | lock integer                                                                                       | Precedence for resolving value for user                       |
| value                        | lock string                                                                                        | Value of user attribute for group                             |

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.