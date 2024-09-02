# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Pulumi program directory into the container
COPY ./programs /app

# Install Pulumi and required packages
RUN pip install pulumi pulumi-gcp

# Command to execute the Pulumi program
CMD ["pulumi", "up", "--yes"]
