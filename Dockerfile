# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /intances/schemachange

# Copy the current directory contents into the container at /app
COPY . /instances/schemachange

# Install schemachange
RUN pip install --no-cache-dir schemachange

# Define the default command to run schemachange
ENTRYPOINT ["schemachange"]

