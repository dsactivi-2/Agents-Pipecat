FROM python:3.12-slim

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install uv package manager
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app

# Copy project files
COPY pyproject.toml uv.lock ./

# Install Python dependencies
RUN uv sync --locked --no-install-project --no-dev

# Copy the application code
COPY bot.py .

# Expose port for FastAPI
EXPOSE 7860

# Run the bot
CMD ["uv", "run", "bot.py"]