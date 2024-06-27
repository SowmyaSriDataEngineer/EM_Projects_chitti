# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container, if it exists
COPY requirements.txt requirements.txt

# Install the Python dependencies, including schemachange
RUN pip install --upgrade pip \
    && pip install schemachange \
    && if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

# Copy the rest of your application code into the container
COPY . .

# Command to run the application
CMD ["schemachange", "--help"]
