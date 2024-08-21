# Update package lists
RUN apt-get update

# Install Docker credential helper
RUN apt-get install -y docker-credential-helpers

# Use an official Python runtime as a parent image
FROM python:3.10

# Install schemachange
RUN pip install schemachange

# Define the default command to run schemachange
ENTRYPOINT ["schemachange"]
