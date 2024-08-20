# Use an official Python runtime as a parent image
FROM python:3.10

WORKDIR /app

COPY instances/schemachange /app/instances/schemachange

# Install schemachange
RUN pip install schemachange

# Define the default command to run schemachange
ENTRYPOINT schemachange
