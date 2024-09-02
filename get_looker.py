# GET Looker

## Plan

###  Authenticate with Looker API: Use your Looker client ID and secret to get an access token.
###  Read the API endpoints from the extracted files.
###  Fetch the data: Make API requests to fetch data from each endpoint.
###  Save the data: Write the fetched data as JSON files to your specified directory.

## Script Template

import os
import requests
import json
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Retrieve environment variables
client_id = os.getenv('LOOKER_CLIENT_ID')
client_secret = os.getenv('LOOKER_CLIENT_SECRET')
looker_instance = os.getenv('LOOKER_INSTANCE')

# Directories
output_directory = '/Users/dionedge/dev/wrenchchat/DoiT/looker_objects'
os.makedirs(output_directory, exist_ok=True)

# Function to get the authentication token
def get_access_token():
    url = f'{looker_instance}/api/4.0/login'
    headers = {
        'Content-Type': 'application/x-www-form-urlencoded'
    }
    data = {
        'client_id': client_id,
        'client_secret': client_secret
    }
    response = requests.post(url, data=data, headers=headers)
    response.raise_for_status()
    return response.json()['access_token']

# Function to fetch data from API and save it to a file
def fetch_and_save_data(endpoint, token, params=None):
    url = f'{looker_instance}/api/4.0{endpoint}'
    headers = {'Authorization': f'token {token}'}

    try:
        response = requests.get(url, headers=headers, params=params)
        response.raise_for_status()
        
        data = response.json()
        file_name = os.path.join(output_directory, f'{endpoint.strip("/").replace("/", "_")}.json')
        
        with open(file_name, 'w') as f:
            json.dump(data, f, indent=4)
        
        return data  # Return the data for parameter extraction

    except requests.exceptions.HTTPError as err:
        # Output only the error messages
        print(f"Error: HTTP error occurred for {url}: {err}")
        return None
    except Exception as err:
        print(f"Error: An unexpected error occurred for {url}: {err}")
        return None

# Main function
def main():
    token = get_access_token()
    
    # Step 1: Retrieve All Project IDs
    projects_data = fetch_and_save_data('/projects', token)
    
    # Loop through each project to perform further operations
    if projects_data:
        for project in projects_data:
            project_id = project['id']
            git_service_name = project.get('git_service_name')
            
            # Fetch Project-Specific Data
            fetch_and_save_data(f'/projects/{project_id}/manifest', token)
            
            # Skip Git-related operations if the project is a Looker app or plugin
            if git_service_name:
                fetch_and_save_data(f'/projects/{project_id}/credentials', token)
                fetch_and_save_data(f'/projects/{project_id}/git_branches', token)
                fetch_and_save_data(f'/projects/{project_id}/active_git_branch', token)
            
            # Skip LookML-related endpoints if not configured
            if project.get('has_lookml_models', False):
                fetch_and_save_data(f'/projects/{project_id}/lookml_models', token)
            
            # Fetch Folder-Specific Data
            folders_data = fetch_and_save_data('/folders', token)
            if folders_data:
                for folder in folders_data:
                    folder_id = folder['id']
                    fetch_and_save_data(f'/folders/{folder_id}/looks', token)
                    fetch_and_save_data(f'/folders/{folder_id}/dashboards', token)
                    
                    # Fetch Dashboards within the Folder
                    dashboards_data = fetch_and_save_data(f'/folders/{folder_id}/dashboards', token)
                    if dashboards_data:
                        for dashboard in dashboards_data:
                            dashboard_id = dashboard['id']
                            fetch_and_save_data(f'/dashboards/{dashboard_id}', token)

if __name__ == '__main__':
    main()

## Steps:

###  Authentication: Replace your_client_id, your_client_secret, and your-looker-instance.com with your actual credentials.
###  Endpoints: You can extract the endpoints from the Markdown files and add them to the endpoints list in the script.
###  Run the script: This will fetch data from each endpoint and save it to the specified directory as JSON files.

## Instructions:

### 1. This script includes all the relevant Looker API endpoints from your extracted files.
### 2. Replace the placeholders with your actual Looker instance URL, which I’ve already done with https://analytics.mediaconfidant.com.
### 3. Run the script to fetch all the Looker objects and save the results in the /Users/dionedge/wrenchchatrepo/looker_objects directory.