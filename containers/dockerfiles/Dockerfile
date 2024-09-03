# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Pulumi, Pulumi GCP, and any other dependencies
RUN pip install pulumi pulumi-gcp

# Install any additional Python dependencies required by deply_looker.py
RUN pip install -r requirements.txt

# Command to run your deploy script
CMD ["python", "deply_looker.py"]
