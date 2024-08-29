Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Users Version 4.0.24.14 (latest)
Get information about all users.

Request

| GET /users   | Datatype                        | Description                                                                                  |
|--------------|---------------------------------|----------------------------------------------------------------------------------------------|
| Request      | HTTP Request                    |                                                                                              |
| query        | HTTP Query                      |                                                                                              |
| add_circle   | Expand HTTP Query definition... |                                                                                              |
| fields       | string                          | Requested fields. DEPRECATED. Use limit and offset instead. Return                           |
| page         | integer                         | only page N of paginated results DEPRECATED. Use limit and offset instead. Return N          |
| per_page     | integer                         | rows of data per page Number of results to return. (used with offset and                     |
| limit        | integer                         | takes priority over page and per_page) Number of results to skip before returning any. (used |
| offset       | integer                         | with limit and takes priority over page and per_page)                                        |
| sorts        | string                          | Fields to sort by.                                                                           |
| ids          | string[]                        |                                                                                              |

Response

| 200: All users. 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…   |
|-------------------------------------|-------------------|---------------------------|
| (#200:-all-users.)                  | Datatype          | Description               |

(array)
User
 (/looker/docs/refer ence/lookerapi/latest/types/Us er)
[]

can lock object Operations the current user is able to perform on this

object

avatar_url lock string URL for the avatar image (may be generic)

avatar_url_without_sizinglock string URL for the avatar image (may be generic), does not specify size CredentialsApi3
 (/looker/docs/refer ence/lookerapi/latest/types/Cre dentialsApi3)
[]
add_circle Expand CredentialsApi3 definition...

credentials_api3

can lock object Operations the current user is able to perform on this

object

id lock string Unique Id client_id lock string API key client_id

created_at lock string Timestamp for the creation of this credential

is_disabled lock boolean Has this credential been disabled? type lock string Short name for the type of this kind of credential url lock string Link to get this item

credentials_emaillock CredentialsEmail
 (/looker/docs/refer ence/lookerapi/latest/types/Cre dentialsEmail)
Email/Password login credentials add_circle Expand CredentialsEmail definition...

can lock object Operations the current user is able to perform on this

object

created_at lock string Timestamp for the creation of this credential

email string EMail address used for user login

forced_password_reset_at_next_login boolean Force the user to change their

password upon their next login

user_id lock string Unique Id of the user

is_disabled lock boolean Has this credential been disabled?

logged_in_at lock  Timestamp for most recent login using credential password_reset_urllock Url with one-time use secret token that the user can use to reset password account_setup_urllock string Url with one-time use secret token that the user can use to setup account

| password_reset_url_expiredlock boolean   | Is password_reset_url expired or not present?   |                                                    |
|------------------------------------------|-------------------------------------------------|----------------------------------------------------|
| account_setup_url_expiredlock boolean    | Is account_setup_url expired or not present?    |                                                    |
| type                                     | lock string                                     | Short name for the type of this kind of credential |
| url                                      | lock string                                     | Link to get this item                              |
| user_url                                 | lock string                                     | Link to get this user                              |

CredentialsEmbe credentials_embed d
 (/looker/docs/refer ence/lookerapi/latest/types/Cr edentialsEmbed)
[]
add_circle Expand CredentialsEmbed definition...

credentials_googlelock CredentialsGoogl e
 (/looker/docs/refer ence/lookerapi/latest/types/Cr edentialsGoogle)

| can                          | lock object                                      | Operations the current user is able to perform on this object                                  |
|------------------------------|--------------------------------------------------|------------------------------------------------------------------------------------------------|
| created_at                   | lock string                                      | Timestamp for the creation of this credential Embedder's id for a group to which this user was |
| external_group_idlock string | added during the most recent login               |                                                                                                |
| external_user_idlock string  | Embedder's unique id for the user                |                                                                                                |
| id                           | lock string                                      | Unique Id                                                                                      |
| is_disabled                  | lock boolean                                     | Has this credential been disabled?                                                             |
| logged_in_at lock string     | Timestamp for most recent login using credential |                                                                                                |
| type                         | lock string                                      | Short name for the type of this kind of credential                                             |
| url                          | lock string                                      | Link to get this item                                                                          |

Google auth credentials add_circle Expand CredentialsGoogle definition...

can lock object Operations the current user is able to perform on this object

| created_at                | lock string                                      | Timestamp for the creation of this credential      |
|---------------------------|--------------------------------------------------|----------------------------------------------------|
| domain                    | lock string                                      | Google domain                                      |
| email                     | lock string                                      | EMail address                                      |
| google_user_idlock string | Google's Unique ID for this user                 |                                                    |
| is_disabled               | lock boolean                                     | Has this credential been disabled?                 |
| logged_in_at lock string  | Timestamp for most recent login using credential |                                                    |
| type                      | lock string                                      | Short name for the type of this kind of credential |
| url                       | lock string                                      | Link to get this item                              |
| CredentialsLDAP           |                                                  |                                                    |

credentials_ldaplock CredentialsLDAP
 (/looker/docs/refer ence/lookerapi/latest/types/Cre dentialsLDAP)
LDAP credentials

| add_circle               | Expand CredentialsLDAP definition...             |                                                                                          |
|--------------------------|--------------------------------------------------|------------------------------------------------------------------------------------------|
| can                      | lock object                                      | Operations the current user is able to perform on this object                            |
| created_at               | lock string                                      | Timestamp for the creation of this credential                                            |
| email                    | lock string                                      | EMail address                                                                            |
| is_disabled              | lock boolean                                     | Has this credential been disabled? LDAP Distinguished name for this user (as-of the last |
| ldap_dn                  | lock string                                      | login)                                                                                   |
| ldap_id                  | lock string                                      | LDAP Unique ID for this user                                                             |
| logged_in_at lock string | Timestamp for most recent login using credential |                                                                                          |
| type                     | lock string                                      | Short name for the type of this kind of credential                                       |
| url                      | lock string                                      | Link to get this item                                                                    |

credentials_looker_openidlock CredentialsLoo kerOpenid
 (/looker/docs/ref erence/lookerapi/latest/types/
CredentialsLooke rOpenid)
LookerOpenID credentials. Used for login by Looker Analysts add_circle Expand CredentialsLookerOpenid definition...

| can                      | lock object                                      | Operations the current user is able to perform on this object   |
|--------------------------|--------------------------------------------------|-----------------------------------------------------------------|
| created_at               | lock string                                      | Timestamp for the creation of this credential                   |
| email                    | lock string                                      | EMail address used for user login                               |
| is_disabled              | lock boolean                                     | Has this credential been disabled?                              |
| logged_in_at lock string | Timestamp for most recent login using credential |                                                                 |

logged_in_ip lock 

IP address of client for most recent login using

credential

type lock string Short name for the type of this kind of credential

url lock string Link to get this item user_url lock string Link to get this user

credentials_oidclock CredentialsOIDC
 (/looker/docs/refer ence/lookerapi/latest/types/Cre dentialsOIDC)
OpenID Connect auth credentials credentials_samllock CredentialsSaml
(/looker/docs/refer ence/lookerapi/latest/types/Cre dentialsSaml)
Saml auth credentials

| add_circle               | Expand CredentialsOIDC definition...             |                                                               |
|--------------------------|--------------------------------------------------|---------------------------------------------------------------|
| can                      | lock object                                      | Operations the current user is able to perform on this object |
| created_at               | lock string                                      | Timestamp for the creation of this credential                 |
| email                    | lock string                                      | EMail address                                                 |
| is_disabled              | lock boolean                                     | Has this credential been disabled?                            |
| logged_in_at lock string | Timestamp for most recent login using credential |                                                               |
| oidc_user_id lock string | OIDC OP's Unique ID for this user                |                                                               |
| type                     | lock string                                      | Short name for the type of this kind of credential            |
| url                      | lock string                                      | Link to get this item                                         |

credentials_totp lock CredentialsTotp
 (/looker/docs/refer ence/lookerapi/latest/types/Cre dentialsTotp)
Two-factor credentials

| add_circle               | Expand CredentialsSaml definition...             |                                                               |
|--------------------------|--------------------------------------------------|---------------------------------------------------------------|
| can                      | lock object                                      | Operations the current user is able to perform on this object |
| created_at               | lock string                                      | Timestamp for the creation of this credential                 |
| email                    | lock string                                      | EMail address                                                 |
| is_disabled              | lock boolean                                     | Has this credential been disabled?                            |
| logged_in_at lock string | Timestamp for most recent login using credential |                                                               |
| saml_user_id lock string | Saml IdP's Unique ID for this user               |                                                               |
| type                     | lock string                                      | Short name for the type of this kind of credential            |
| url                      | lock string                                      | Link to get this item                                         |

| add_circle                           | Expand CredentialsTotp definition...                                              |                                                                                                                                                                      |
|--------------------------------------|-----------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| can                                  | lock object                                                                       | Operations the current user is able to perform on this object                                                                                                        |
| created_at                           | lock string                                                                       | Timestamp for the creation of this credential                                                                                                                        |
| is_disabled                          | lock boolean                                                                      | Has this credential been disabled?                                                                                                                                   |
| type                                 | lock string                                                                       | Short name for the type of this kind of credential                                                                                                                   |
| verified                             | lock boolean                                                                      | User has verified                                                                                                                                                    |
| url                                  | lock string                                                                       | Link to get this item Full name for display (available only if both first_name                                                                                       |
| display_name                         | lock string                                                                       | and last_name are set)                                                                                                                                               |
| email                                | lock string                                                                       | EMail address (DEPRECATED) (Embed only) ID of user's group                                                                                                           |
| embed_group_space_idlock string      | space based on the external_group_id optionally specified during embed user login |                                                                                                                                                                      |
| first_name                           | string                                                                            | First name                                                                                                                                                           |
| group_ids                            | string[]                                                                          |                                                                                                                                                                      |
| home_folder_id                       | string                                                                            | ID string for user's home folder                                                                                                                                     |
| id                                   | lock string                                                                       | Unique Id                                                                                                                                                            |
| is_disabled                          | boolean                                                                           | Account has been disabled                                                                                                                                            |
| last_name                            | string                                                                            | Last name User's preferred locale. User locale takes precedence over Looker's system-wide default locale. Locale determines language of display strings and date and |
| locale                               | string                                                                            | numeric formatting in API responses. Locale string must be a 2 letter language code or a combination of language code and region code: 'en' or 'en-US', for example. |
| looker_versions                      | string[]                                                                          |                                                                                                                                                                      |
| models_dir_validated                 | boolean                                                                           | User's dev workspace has been checked for presence of applicable production projects                                                                                 |
| personal_folder_idlock string        | ID of user's personal folder                                                      |                                                                                                                                                                      |
| presumed_looker_employeelock boolean | (DEPRECATED) User is identified as an employee of Looker                          |                                                                                                                                                                      |
| role_ids                             | string[] Session  (/looker/docs/refer ence/lookerapi/latest/types/Ses sion)                                                                                   |                                                                                                                                                                      |
| sessions                             |                                                                                   |                                                                                                                                                                      |

| add_circle                                           | Expand Session definition...                                                                  |                                                                                                                               |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| can                                                  | lock object                                                                                   | Operations the current user is able to perform on this object                                                                 |
| id                                                   | lock string                                                                                   | Unique Id                                                                                                                     |
| ip_address                                           | lock string                                                                                   | IP address of user when this session was initiated                                                                            |
| browser                                              | lock string                                                                                   | User's browser type                                                                                                           |
| operating_systemlock string                          | User's Operating System                                                                       |                                                                                                                               |
| City component of user location (derived from IP     |                                                                                               |                                                                                                                               |
| city                                                 | lock string                                                                                   | address) State component of user location (derived from IP                                                                    |
| state                                                | lock string                                                                                   | address) Country component of user location (derived from IP                                                                  |
| country                                              | lock string                                                                                   | address)                                                                                                                      |
| credentials_typelock string                          | Type of credentials used for logging in this session                                          |                                                                                                                               |
| extended_at                                          | lock string                                                                                   | Time when this session was last extended by the user                                                                          |
| extended_countlock integer                           | Number of times this session was extended                                                     |                                                                                                                               |
| Actual user in the case when this session represents |                                                                                               |                                                                                                                               |
| sudo_user_id lock string                             | one user sudo'ing as another                                                                  |                                                                                                                               |
| created_at                                           | lock string                                                                                   | Time when this session was initiated                                                                                          |
| expires_at                                           | lock string                                                                                   | Time when this session will expire                                                                                            |
| url                                                  | lock string                                                                                   | Link to get this item                                                                                                         |
| ui_state                                             | object                                                                                        | Per user dictionary of undocumented state information owned by the Looker UI. User is identified as an employee of Looker who |
| verified_looker_employeelock boolean                 | has been verified via Looker corporate authentication User's roles are managed by an external |                                                                                                                               |
| roles_externally_managedlock boolean                 | directory like SAML or LDAP and can not be changed directly.                                  |                                                                                                                               |
| allow_direct_roleslock boolean                       | User can be directly assigned a role.                                                         |                                                                                                                               |
| allow_normal_group_membershiplock boolean            | User can be a direct member of a normal Looker group.                                         |                                                                                                                               |
| allow_roles_from_normal_groupslock boolean           | User can inherit roles from a normal Looker group.                                            |                                                                                                                               |
| (Embed only) ID of user's group folder based on      |                                                                                               |                                                                                                                               |
| embed_group_folder_idlock string                     | the external_group_id optionally specified during embed user login                            |                                                                                                                               |

| is_iam_admin   | lock boolean   | User is an IAM Admin - only available in Looker (Google Cloud core)   |
|----------------|----------------|-----------------------------------------------------------------------|
| url            | lock string    | Link to get this item                                                 |

## Examples

```
Python
      
   (#python)
      Ruby (#ruby)TypeScript (#typescript)Kotlin (#kotlin)Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/logout_all_users.py
 (https://github.com/looker-open-source/sdk-codegen/blob/main/examples/python/logout_all_users.py\#L28) https://github.com/looker-open-source/sdk-codegen/blob/main/python/tests/integration/test_methods.py
 (https://github.com/looker-open-source/sdkcodegen/blob/main/python/tests/integration/test_methods.py\#L211)
https://github.com/looker-open-source/sdk-codegen/blob/main/python/tests/integration/test_methods.py
 (https://github.com/looker-open-source/sdkcodegen/blob/main/python/tests/integration/test_methods.py\#L214)
https://github.com/looker-open-source/sdk-codegen/blob/main/python/tests/integration/test_methods.py
 (https://github.com/looker-open-source/sdkcodegen/blob/main/python/tests/integration/test_methods.py\#L264)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.