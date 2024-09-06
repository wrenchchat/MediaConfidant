# Final Project Handover Document

## Handoff Checklist

### GitHub Repository Transfer Checklist:

#### 1. Repository Cleanup:
- [x] Remove any unnecessary branches, stale issues, or PRs.
- [x] Ensure .gitignore is properly configured to exclude sensitive files.
- [x] Review and clean up the README.md and documentation files.
- [ ] Review Mutable AI Auto wiki and transfer billing ownershop.
#### 2. Access and Permissions:
- [x] Remove any personal or third-party access that should not be transferred.
- [x] Add the customer as a collaborator or transfer the repository ownership directly.
- [x] Update or remove any service tokens, SSH keys, or OAuth apps that should not be transferred.
#### 3. Repository Transfer:
- [ ] If transferring ownership, follow GitHub’s repository transfer process.
- [ ] Ensure the customer has proper permissions and access once the transfer is complete.
#### 4. Submodules and External Dependencies:
- [x] Ensure any Git submodules are correctly configured and accessible to the customer.
- [x] Document any external dependencies and ensure they are accessible to the customer.
#### 5. GitHub Actions/CI/CD:
- [x] Review and update GitHub Actions workflows to remove any credentials or settings specific to your environment.
- [x] Test that the CI/CD pipeline works in the customer’s environment.
#### 6. Licensing and Legal Considerations:
- [x] Ensure all necessary licenses are included and up-to-date.
- [x] Verify that all third-party dependencies are compliant with any licensing requirements.
#### 7. Documentation:
- [x] Ensure all documentation is up to date and includes details on setup, configuration, and deployment.
- [x] Include any relevant diagrams, architecture overviews, and contact information for support.
#### 8. Support Transition:
- [x] Set up a transition plan for support (e.g., email, Slack channel) for a defined period post-handover.
- [x] Provide an overview of key contacts and escalation paths.

### GCP Cloud Environment Transfer Checklist:

#### 1. Billing and Ownership:
- [x] Ensure the customer is added as the billing account owner or set up a new billing account under their control.
- [x] Transfer project ownership to the customer, including billing responsibilities.
#### 2. IAM Permissions and Roles:
- [x] Review and update IAM policies to remove your access and ensure the customer has appropriate roles.
- [x] Set up a custom IAM role for the customer if specific permissions are needed.
#### 3. Service Accounts:
- [x] Update service account keys and permissions to ensure proper access control.
#### 4. Resources and Assets:
- [x] Document all resources (e.g., buckets, databases) that need to be transferred.
- [x] Ensure all critical resources are tagged, organized, and labeled for easy identification.
#### 5. Networking and Security:
- [x] Review and update firewall rules, VPC settings, and any VPNs or interconnects.
- [x] Ensure proper encryption keys (KMS) are in place and transferred securely.
#### 6. Data and Storage:
- [x] Transfer ownership of storage buckets (GCS), databases (BigQuery, Cloud SQL), and any other data assets.
- [x] Ensure data integrity and availability during the transition process.
#### 7. Monitoring and Alerts:
- [x] Review and transfer ownership of monitoring configurations (e.g., Cloud Monitoring, Logging).
- [x] Ensure that alerts and notifications are correctly configured for the customer’s team.
#### 8. API and Services:
- [x] Ensure all necessary APIs are enabled and configured for the customer.
- [x] Review any third-party integrations or services and transfer or update credentials as needed.
#### 9. Automation and Infrastructure as Code:
- [x] Transfer any Terraform, Deployment Manager, or other IaC scripts.
- [x] Ensure the customer can deploy, manage, and modify the infrastructure using the provided IaC tools.
#### 10. Final Verification and Handoff:
- [ ] Conduct a final walkthrough with the customer to review all transferred assets and permissions.
- [x] Provide a detailed handover document outlining the environment, architecture, and any special considerations.
- [ ] Set up a final meeting to address any last-minute questions or issues.

**[Google Cloud Setup](https://console.cloud.google.com/cloud-setup/foundations?orgonly=true&organizationId=26556118309)**

### Production

**Support production ready workloads with security and scalability in mind; defaults to Google Cloudbest-practice architectures and allows for modifications.**

**[x]** Terraform download or direct deployment // Used [Pulumi](https://www.pulumi.com/) for IaC

**[x]** Organization resource, 

**[x]** Billing // Set up [Billing alert]() on BigQuery

**[x]** Admin groups // I will remove my [IAM credentials](https://console.cloud.google.com/iam-admin/iam?orgonly=true&project=doit-new-project&supportedpurview=project) at Final Handoff 

**[x]** Resource hierarchy // Not utilized, 

**[x]** Central logging // 
Set up [simple logging alert](https://console.cloud.google.com/monitoring/alerting/policies/10223621340778075976?orgonly=true&project=doit-new-project&supportedpurview=project) for severe errors in BigQuery

**[x]** Central monitoring // 
[Simple logging alert](https://console.cloud.google.com/monitoring/alerting/policies/10223621340778075976?orgonly=true&project=doit-new-project&supportedpurview=project) Can be found here

**[x]** Shared VPC networks // Not utilized

**[x]** Hybrid connectivity // Not utilized

**[x]** Security // Not utilized

**[x]** Organization policies // Not utilized

**[x]** Security Command Center // Not utilized

**[x]** VPC Service Controls // Not utilized

**[x]** Key management // Not utilized

### GCP Resources:

+ BigQuery
+ Dataform
+ Cloud Storage
+ Cloud Logging
+ Cloud Monitoring

**Project: doit-new-project**

+ BigQuery:
	+ datasets: customers	
		+ DTS: ds_copy_customers (demo only)
		+ DTS: ds_copy_facebook (demo only)
		+ DTS: ds_copy_ga4 (demo only)
		+ DTS: ds_copy_bing (demo only)
		+ DTS: ds_copy_tiktok_ads (demo only)
		+ DTS: ds_copy_google (demo only)
	+ datasets: looker_scratch
	+ datasets: synthetic
+ Dataform: demo_vendors
	+ workspce: demo_workspace
+ Cloud Storage:
	+ bucket: gs://demo_bucket_mediaconfidant
+ Cloud Logging: active
+ Cloud Monitoring: active

**Project: youfit-gyms** // external

+ BigQuery:
	+ datasets: looker_scratch
	+ datasets: youfitgadstest

**Project: empyrean-backup-411421** // external

+ BigQuery:
	+ datasets: analytics_321061426
	+ datasets: looker_scratch
	+ 	datasets: new_ga_datasset_april_3_test

**Project: mediaconfidant** // Scheduled for Deletion

+ BigQuery:
	+ datasets: mediaconfidant
	+ datasets: analytics-pipeline-20240526
+ Cloud Storage:
	+ bucket: gs://mediaconfidant_docs_bucket
	+ bucket: gs://us-central1-mediaconfidant--c9c539d5-bucket
	+ bucket: gs://us-central1-mediaconfidant--ca310228-bucket

### Active APIs:
+ AI Platform Training & Prediction API
+ Analytics Hub API
+ BigQuery API
+ BigQuery Connection API
+ BigQuery Data Transfer API
+ BigQuery Reservation API
+ Cloud Logging API
+ Cloud Monitoring API
+ Dataform API
+ Looker API
+ Secret Manager API
+ Vertex AI API

### Required Supporting APIs:
+ BigQuery Data Policy API
+ BigQuery Migration API
+ BigQuery Storage API
+ Cloud Datastore API
+ Cloud Resource Manager API
+ Cloud SQL
+ Cloud Storage
+ Cloud Storage API
+ Cloud Trace API
+ Google Cloud APIs
+ Google Cloud Storage JSON API
+ Service Management API 
+ Service Usage API

### Active Service Accounts:

bq-looker@doit-new-project.iam.gserviceaccount.com
+ count of required permissions:
+ bigquery, 111
+ dataform, 60
+ logging, 66
+ storage, 44
+ looker, 18
+ recommender, 6
+ resourcemanager, 2
+ dataplex.projects.search, 1
+ firebase.projects.get, 1
+ iam.serviceAccounts.getAccessToken ,1
+ observability.scopes.get, 1
+ orgpolicy.policy.get, 1

**See required_permissions.md for full list.**

## Document Index:

### instructions:

#### codestuff:
- enable_pull_requests.md
- mediaconfidant_process_automation.md
- what_are_looker_apps.md
- Making_Changes_in_Looker.md

#### custom_roles:
- create_custom_roles.md
- required_permissions.md

#### deployment:
- set_up_new_customers_.md
- Pulumi_Docker_Integration.md
- How_we_manage_GitHub_at_Pulumi.md
- Import_Existing_Cloud_Infrastructure_Pulumi_Doc.md

#### new_data:
- Block Bing Ads README.md
- Meta README.md
- setting_up_dataform.md
- create_Synthetic_Data.md
- stitch.md
- adding_data_sources.md
- what_is_BQ_ML.md
- Block Google Ads README.md
- handling_differen_connection_types.md
- setup_tiktok_python_sdk.md

### looker:

#### gcp_support:
- Complete_tasks_using_the_Command_Palette_in_Cloud_Code_for_VS_Code_Google_Cloud.md
- Create_a_Cloud_Function_by_using_the_Google_Cloud_CLI_Cloud_Functions_Documentation.md
- Create_a_secret_Secret_Manager_Documentation_Google_Cloud.md
- gcloud_Google_Cloud_CLI_Documentation.md
- gcloud_projects_add-iam-policy-binding_Google_Cloud_CLI_Documentation.md
- gcloud_secrets_create_Google_Cloud_CLI_Documentation.md
- iam-check-permissions.md
- Logging_query_language_Google_Cloud.md
- Logging_query_language.md
- Query_and_view_logs_overview_Cloud_Logging_Google_Cloud.md
- Secret_Manager_overview_Secret_Manager_Documentation_Google_Cloud.md
- Securing-API-Gateway-Access-Cloud-Armor.md
- Understanding_audit_logs.md
- Vector_Search_and_Embeddings_across_GCP_products_Google_Cloud_Community.md
- Authorize_accounts_for_data_transfer_BigQuery_Google_Cloud.pdf
- BigQuery_Data_Transfer_Service_run_notifications_Google_Cloud.pdf
- Data_location_and_transfers_BigQuery_Google_Cloud.pdf
- Enable_the_BigQuery_Data_Transfer_Service_Google_Cloud.pdf
- Google_Ads_report_transformation_BigQuery_Google_Cloud.pdf
- Google_Ads_transfers_BigQuery_Google_Cloud.pdf
- Google_Ads_update_guide_BigQuery_Google_Cloud.pdf
- Import_Dashboard_from_LookML_Looker_Google_Cloud.pdf
- Import_LookML_Dashboard_Looker_Google_Cloud.pdf
- List_accessible_databases_to_this_connection_Looker_Google_Cloud.pdf
- Manage_transfers_BigQuery_Google_Cloud.pdf
- Schedule_a_Facebook_Ads_transfer_BigQuery_Google_Cloud.pdf
- Troubleshoot_transfer_configurations_BigQuery_Google_Cloud.pdf
- Use_service_accounts_BigQuery_Google_Cloud.pdf
- What_is_BigQuery_Data_Transfer_Service_Google_Cloud.pdf

#### looker_api:
- Get Active Git Branch Looker Google Cloud.md
- Get All Connections Looker Google Cloud.md
- Get All Content Metadata Accesses Looker Google Cloud.md
- Get All Content Metadatas Looker Google Cloud.md
- Get All Dashboards Looker Google Cloud.md
- Get All Datagroups Looker Google Cloud.md
- Get All Dialect Infos Looker Google Cloud.md
- Get All External OAuth Applications Looker Google Cloud.md
- Get All Folders Looker Google Cloud.md
- Get All Git Branches Looker Google Cloud.md
- Get All Git Connection Tests Looker Google Cloud.md
- Get All Groups Looker Google Cloud.md
- Get All Integration Hubs Looker Google Cloud.md
- Get All Integrations Looker Google Cloud.md
- Get All Legacy Features Looker Google Cloud.md
- Get All LookML Models Looker Google Cloud.md
- Get All LookML Tests Looker Google Cloud.md
- Get All Looks Looker Google Cloud.md
- Get All Model Sets Looker Google Cloud.md
- Get All OAuth Client Apps Looker Google Cloud.md
- Get All Permission Sets Looker Google Cloud.md
- Get All Permissions Looker Google Cloud.md
- Get All Project Files Looker Google Cloud.md
- Get All Projects Looker Google Cloud.md
- Get All Repository Credentials Looker Google Cloud.md
- Get All Roles Looker Google Cloud.md
- Get All User Attributes Looker Google Cloud.md
- Get All Users Looker Google Cloud.md
- Get All Users in Group Looker Google Cloud.md
- Get All Workspaces Looker Google Cloud.md
- Get Auth Looker Google Cloud.md
- Get columns for a connection Looker Google Cloud.md
- Get Content Metadata Looker Google Cloud.md
- Get Dashboard Looker Google Cloud.md
- Get Derived Table graph for model Looker Google Cloud.md
- Get Folder Dashboards Looker Google Cloud.md
- Get Folder Looks Looker Google Cloud.md
- Get LookML Model Explore Looker Google Cloud.md
- Get Manifest Looker Google Cloud.md
- Get OAuth Client App Looker Google Cloud.md
- Get Role Users Looker Google Cloud.md
- Get schemas for a connection Looker Google Cloud.md
- Get Setting Looker Google Cloud.md
- Get subgraph of derived table and dependencies Looker Google Cloud.md
- Get tables for a connection Looker Google Cloud.md
- Get User Attribute Group Values Looker Google Cloud.md

#### looker_support:
- Build a Content Performance Dashboard With Google Looker.md
- Building LookML dashboards Looker Google Cloud.md
- Considerations when building performant Looker dashboards Google Cloud.md
- dimension_group Looker Google Cloud.md
- fields (for Explores) Looker Google Cloud.md
- fields (for joins) Looker Google Cloud.md
- from (for Explores) Looker Google Cloud.md
- from (for joins) Looker Google Cloud.md
- Google BigQuery Looker Google Cloud.md
- Google Cloud Looker BigQuery Connection.md
- local_dependency Looker Google Cloud.md
- Looker and BigQuery Important Considerations - Google Cloud Whitepaper.md
- Looker API Reference.md
- Looker Google Cloud core audit logging.md
- Looker User Level Cost and Usage of BigQuery by Manasa Kallakuri Searce.md
- Looker visualization components Google Cloud.md
- LookML refinements Looker Google Cloud.md
- lookml test.md
- Managing LookML files and folders Looker Google Cloud.md
- Optimize Looker performance Google Cloud.md
- Performance overview Looker Google Cloud.md
- Project manifest parameters Looker Google Cloud.md
- System Activity Explores.md
- test Looker Google Cloud.md
- Types of files in a LookML project Looker Google Cloud.md
- Using Lookerbot for Slack Google Cloud.md

### roadmap:

#### ai_dev:
- Agentic_System.md
- GenAI_GraphRAG_ Vertex_Reasoning_Endgine.md

#### data:
- Block Bing Ads README.md
- Meta README.md
- stitch.md
- adding_data_sources.md
- Block Google Ads README.md

#### tiktok:
- TikTok_API_BQ.md
- Dataform_TikTok_BigQuery.md
- Block TikTok README.md

#### tools:
- Looker Explore Assistant README.md
- spectacles.md

#### ai_ml:
- Vector Search and Embeddings across GCP products Google Cloud - Community.md
- Best practices for creating tabular training data Vertex AI Google Cloud.md
- Gemini API Overview Google for Developers.md
- Gemini 1.5 Pro Prompt Engineering Guide.md
- Python Visualization Generative AI on Vertex AI Google Cloud.md
- Model API for Gemini in Vertex AI Generative AI on Vertex AI Google Cloud.md
- Google AI Studio quickstart Gemini API Google for Developers.md
- Introduction to AI and ML in BigQuery Google Cloud.md
- Code with Gemini Code Assist - Cloud Code for VS Code - Google Cloud.md

### pipeline:
- Access control with IAM Artifact Registry documentation Google Cloud.md
- BigQuery Data Products.md
- Cloud Build API Connector Overview Workflows Google Cloud.md
- Connect to a GitHub repository Cloud Build Documentation Google Cloud.md
- Dataflow ML.md
- Deploy a workflow from a Git repository using Cloud Build Workflows Google Cloud.md
- Generate synthetic data with BigQuery DataFrames and LLMs Google Cloud Blog.md
- GitHub Action Docker Build and Push to Artifact Registry.md
- GitHub Actions to Google Cloud.md
- How to Integrate Pulumi with GitHub Actions.md
- Import Existing Cloud Infrastructure Pulumi Docs.md
- Overview of Dataform core Google Cloud.md
- Quickstart Create a Docker Hub remote repository Artifact Registry documentation Google Cloud.md
- Quickstart Create a workflow by using the gcloud CLI Workflows Google Cloud.md
- Quickstart Store Docker container images in Artifact Registry Artifact Registry documentation Google Cloud.md
- Routing and storage overview Cloud Logging Google Cloud.md
- Serverless ELT with GCS, BigQuery, and Cloud Workflows Google Cloud Community.md
- Troubleshooting Cloud Storage Google Cloud.md
- Use the open-source Dataform CLI Google Cloud.md
- Workflows API Connector Overview Google Cloud.md