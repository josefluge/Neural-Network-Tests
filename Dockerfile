# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set environment variables
ENV POETRY_VERSION=1.8.0
ENV PATH="/root/.local/bin:$PATH"

# Install system dependencies and Poetry
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc curl && \
    curl -sSL https://install.python-poetry.org | python3 - && \
    apt-get purge -y --auto-remove curl gcc

# Set the working directory
WORKDIR /app

# Copy only the poetry files to install dependencies first
COPY pyproject.toml poetry.lock* /app/

# Install the dependencies
RUN poetry install --no-interaction --no-root

# Copy the rest of your application code
COPY . /app

# Specify the command to run your application (can be overridden)
# CMD ["poetry", "run", "python", "your_script.py"]