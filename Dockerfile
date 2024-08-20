# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install schemachange
RUN pip install --no-cache-dir schemachange

# Define the default command to run schemachange
ENTRYPOINT ["schemachange"]
