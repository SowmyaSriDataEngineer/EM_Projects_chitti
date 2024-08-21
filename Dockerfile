# Use an official Python runtime as a parent image
FROM python:3.10

# Install schemachange
RUN pip install schemachange

# Install Docker credential helper
RUN apt-get update && \
    apt-get install -y curl \
    && curl -fsSL https://github.com/docker/docker-credential-helper/releases/download/v0.7.0/docker-credential-helper-linux-amd64-0.7.0.tar.gz \
    | tar xzC /usr/local/bin \
    && chmod +x /usr/local/bin/docker-credential-helper

# Create Docker config directory with a blank config file
RUN mkdir -p /root/.docker && \
    echo '{}' > /root/.docker/config.json

# Define the default command to run schemachange
ENTRYPOINT ["schemachange"]
