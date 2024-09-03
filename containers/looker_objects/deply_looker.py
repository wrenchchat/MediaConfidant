import requests
import json

# Authentication
def authenticate(client_id, client_secret, base_url):
    auth_url = f"{base_url}/login"
    response = requests.post(auth_url, data={'client_id': client_id, 'client_secret': client_secret})
    response.raise_for_status()
    return response.json()['access_token']

# Create or Update Model
def create_or_update_model(base_url, token, model_data):
    headers = {
        'Authorization': f'token {token}',
        'Content-Type': 'application/json'
    }
    model_url = f"{base_url}/api/4.0/models"
    response = requests.post(model_url, headers=headers, data=json.dumps(model_data))
    if response.status_code == 409:  # Conflict, the model already exists, so update it
        model_id = response.json()['id']
        update_url = f"{model_url}/{model_id}"
        response = requests.patch(update_url, headers=headers, data=json.dumps(model_data))
    response.raise_for_status()

# Create or Update Dashboard
def create_or_update_dashboard(base_url, token, dashboard_data):
    headers = {
        'Authorization': f'token {token}',
        'Content-Type': 'application/json'
    }
    dashboard_url = f"{base_url}/api/4.0/dashboards"
    response = requests.post(dashboard_url, headers=headers, data=json.dumps(dashboard_data))
    if response.status_code == 409:  # Conflict, the dashboard already exists, so update it
        dashboard_id = response.json()['id']
        update_url = f"{dashboard_url}/{dashboard_id}"
        response = requests.patch(update_url, headers=headers, data=json.dumps(dashboard_data))
    response.raise_for_status()

# Main function
def main():
    client_id = "your_client_id"
    client_secret = "your_client_secret"
    base_url = "https://your_looker_instance.com"

    # Authenticate and get token
    token = authenticate(client_id, client_secret, base_url)

    # Load the JSON files
    with open('models.json', 'r') as model_file:
        models = json.load(model_file)
    with open('dashboards.json', 'r') as dashboard_file:
        dashboards = json.load(dashboard_file)

    # Create or update the models
    for model in models:
        create_or_update_model(base_url, token, model)

    # Create or update the dashboards
    for dashboard in dashboards:
        create_or_update_dashboard(base_url, token, dashboard)

if __name__ == "__main__":
    main()