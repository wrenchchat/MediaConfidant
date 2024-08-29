# Create Custom Roles:

## Custom_Roles:

top_level, permissions, custom_role
bigquery, 111, data_engineer
dataform, 60, data_engineer
logging, 66, data_engineer
storage, 44, data_engineer
dataplex.projects.search, 1, data_engineer
looker, 18, data_engineer
recommender, 6, policy_admin
resourcemanager, 2, policy_admin
iam.serviceAccounts.getAccessToken, 1, policy_admin
observability.scopes.get, 1, policy_admin
orgpolicy.policy.get, 1, policy_admin

## gcloud _commands:
```
gcloud iam roles create data_engineer \
--project=your_project_id \
--title="Data Engineer" \
--description="Custom role for data engineering tasks, including BigQuery, Dataform, Logging, Storage, Dataplex, and Looker." \
--permissions="bigquery_permission_1,bigquery_permission_2,...,dataform_permission_1,...,logging_permission_1,...,storage_permission_1,...,dataplex.projects.search,looker_permission_1,..." \
--stage=GA
```

```
gcloud iam roles create policy_admin \
--project=your_project_id \
--title="Policy Admin" \
--description="Custom role for policy administration tasks, including Recommender, Resource Manager, IAM, Observability, and Org Policy." \
--permissions="recommender.iamPolicyInsights.get,recommender.iamPolicyInsights.list,recommender.iamPolicyInsights.update,recommender.iamPolicyRecommendations.get,recommender.iamPolicyRecommendations.list,recommender.iamPolicyRecommendations.update,resourcemanager.projects.getAccessToken,iam.serviceAccounts.getAccessToken,observability.scopes.get,orgpolicy.policy.get" \
--stage=GA
```

```
gcloud iam roles create data_engineer \
--project=your_project_id \
--title="Data Engineer" \
--description="Custom role for data engineering tasks, including BigQuery, Dataform, Logging, Storage, Dataplex, and Looker." \
--permissions="bigquery_permission_1,bigquery_permission_2,...,dataform_permission_1,...,logging_permission_1,...,storage_permission_1,...,dataplex.projects.search,looker_permission_1,..." \
--stage=GA
```

```
gcloud iam roles create policy_admin \
--project=your_project_id \
--title="Policy Admin" \
--description="Custom role for policy administration tasks, including Recommender, Resource Manager, IAM, Observability, and Org Policy." \
--permissions="recommender.iamPolicyInsights.get,recommender.iamPolicyInsights.list,recommender.iamPolicyInsights.update,recommender.iamPolicyRecommendations.get,recommender.iamPolicyRecommendations.list,recommender.iamPolicyRecommendations.update,resourcemanager.projects.getAccessToken,iam.serviceAccounts.getAccessToken,observability.scopes.get,orgpolicy.policy.get" \
--stage=GA
```