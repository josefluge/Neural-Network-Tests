# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Avoid prompts from certain tools (e.g., apt)
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH
ENV PATH="/root/.local/bin:$PATH"

# Copy Poetry files
COPY pyproject.toml poetry.lock ./

# Install dependencies using Poetry
RUN poetry install --no-dev

# Expose JupyterLab's port
EXPOSE 8888

# Create a volume for persistent storage under /assets in the container
VOLUME /app/assets

# Set environment variables for JupyterLab
# Set token to empty string to disable authentication
ENV JUPYTER_TOKEN=""
ENV JUPYTER_ENABLE_LAB=yes

# Start JupyterLab without token authentication
CMD ["poetry", "run", "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
