# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Install schemachange
RUN pip install schemachange

# Define the default command to run schemachange
ENTRYPOINT schemachange

