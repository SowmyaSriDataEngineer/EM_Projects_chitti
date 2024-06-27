# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install schemachange
RUN pip install --upgrade pip \
    && pip install schemachange

# Command to run the application
CMD ["schemachange", "--help"]
