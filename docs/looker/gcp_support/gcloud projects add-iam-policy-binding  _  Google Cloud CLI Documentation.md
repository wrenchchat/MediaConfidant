# Gcloud Projects Add-Iam-Policy-Binding

NAME
gcloud projects add-iam-policy-binding - add IAM policy binding for a project

## Synopsis

gcloud projects add-iam-policy-binding PROJECT_ (\#PROJEC ID T_ID)
--memb (\#--member) er =PRINCIPAL --ro (\#--r le ole)=ROLE [--conditi (\#--condition) on =[KEY=VALUE,…]     | --condition-from-fi (\#--condition-fr le om-file)=CONDITION_FROM_FILE] [GCLOUD_WIDE_FLAG
 (\#GCLOUD-WIDE-FLAGS) …]

## Description

Adds a policy binding to the IAM policy of a project, given a project ID and the binding. One binding consists of a member, a role, and an optional condition.

## Examples

To add an IAM policy binding for the role of roles/editor for the user test-user@gmail.com on a project with identifier example-project-id-1, run:
$ gcloud projects add-iam-policy-binding example-project-id-1 --member='user:testuser@gmail.com' --role='roles/editor' To add an IAM policy binding for the role of roles/editor to the service account testproj1@example.domain.com on a project with identifier example-project-id-1, run:
$ gcloud projects add-iam-policy-binding example-project-id-1 --member='serviceAccount:test-proj1@example.domain.com' --role='roles/editor' To add an IAM policy binding that expires at the end of the year 2021 for the role of roles/browser and the user test-user@gmail.com on a project with identifier example-project-id-1, run:
$ gcloud projects add-iam-policy-binding example-project-id-1 --member='user:testuser@gmail.com' --role='roles/browser' --condition='expression=request.time <
timestamp("2019-01-01T00:00:00Z"),title=expires_end_of_2021,descrip\
tion=Expires at midnight on 2021-12-31' See https://cloud.google.com/iam/docs/managing-policies
 (https://cloud.google.com/iam/docs/managing-policies) for details of policy role and member types.

## Positional Arguments

Project resource - The project to add the IAM policy binding. This represents a Cloud resource. This must be specified.

PROJECT_ID

ID of the project or fully qualified identifier for the project.

To set the project_id attribute:
provide the argument project_id on the command line.

## Required Flags

--member=PRINCIPAL
The principal to add the binding for. Should be of the form user|group|serviceAccount:email or domain:domain. Examples: user:test-user@gmail.com, group:admins@example.com, serviceAccount:test123@example.domain.com, or domain:example.domain.com. Some resources also accept the following special values:
allUsers - Special identifier that represents anyone who is on the internet, with or without a Google account. allAuthenticatedUsers - Special identifier that represents anyone who is authenticated with a Google account or a service account.

--role=ROLE
Role name to assign to the principal. The role name is the complete path of a predefined role, such as roles/logging.viewer, or the role ID for a custom role, such as organizations/{ORGANIZATION_ID}/roles/logging.viewer.

OPTIONAL FLAGS
At most one of these can be specified:
--condition=[KEY=VALUE,…]
A condition to include in the binding. When the condition is explicitly specified as None (--
condition=None), a binding without a condition is added. When the condition is specified and is not None, --role cannot be a basic role. Basic roles are roles/editor, roles/owner, and roles/viewer. For more on conditions, refer to the conditions overview guide: https://cloud.google.com/iam/docs/conditions-overview
 (https://cloud.google.com/iam/docs/conditions-overview)
When using the --condition flag, include the following key-value pairs:
expression
(Required) Condition expression that evaluates to True or False. This uses a subset of Common Expression Language syntax.

If the condition expression includes a comma, use a different delimiter to separate the key-value pairs. Specify the delimiter before listing the key-value pairs. For example, to specify a colon (:) as the delimiter, do the following: -- condition=^:^title=TITLE:expression=EXPRESSION. For more information, see https://cloud.google.com/sdk/gcloud/reference/topic/escaping
 (https://cloud.google.com/sdk/gcloud/reference/topic/escaping).

title
(Required) A short string describing the purpose of the expression.

description
(Optional) Additional description for the expression.

--condition-from-file=CONDITION_FROM_FILE
Path to a local JSON or YAML file that defines the condition. To see available fields, see the help for --condition.

## Gcloud Wide Flags

These flags are available to all commands: --access-token-file
 (/sdk/gcloud/reference\#--access-token-file), --account (/sdk/gcloud/reference\#--account), --billingproject (/sdk/gcloud/reference\#--billing-project), --configuration (/sdk/gcloud/reference\#--configuration),
--flags-file (/sdk/gcloud/reference\#--flags-file), --flatten (/sdk/gcloud/reference\#--flatten), --format
 (/sdk/gcloud/reference\#--format), --help (/sdk/gcloud/reference\#--help), --impersonate-serviceaccount (/sdk/gcloud/reference\#--impersonate-service-account), --log-http
 (/sdk/gcloud/reference\#--log-http), --project (/sdk/gcloud/reference\#--project), --quiet
 (/sdk/gcloud/reference\#--quiet), --trace-token (/sdk/gcloud/reference\#--trace-token), --user-outputenabled (/sdk/gcloud/reference\#--user-output-enabled), --verbosity (/sdk/gcloud/reference\#--verbosity).

Run $ gcloud help (/sdk/gcloud/reference) for details.

## Api Reference

This command uses the cloudresourcemanager/v1 API. The full documentation for this API can be found at: https://cloud.google.com/resource-manager (https://cloud.google.com/resource-manager)
NOTES
These variants are also available:
$ gcloud alpha projects add-iam-policy-binding
 (/sdk/gcloud/reference/alpha/projects/add-iam-policy-binding)
$ gcloud beta projects add-iam-policy-binding (/sdk/gcloud/reference/beta/projects/add-iam-policy-binding)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-04-16 UTC.