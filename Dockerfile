# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set environment variables to reduce Python package issues and ensure output is sent straight to the terminal without being first buffered
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install system dependencies required for Ansible and its extensions
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ssh \
    sshpass \
    openssh-client \
    iputils-ping \
    rsync \
    vim \
    git \
    tree && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Ansible
RUN pip install --upgrade pip && \
    pip install ansible ansible-lint paramiko

# Verify installation
RUN ansible --version

# Set working directory
WORKDIR /ansible

# Default command: display Ansible version
CMD ["ansible", "--version"]
