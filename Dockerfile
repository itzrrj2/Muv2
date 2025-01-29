FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Install system dependencies required for Pillow, tgcrypto, and git
RUN apt update && apt install -y \
    git \
    gcc \
    libffi-dev \
    libssl-dev \
    libjpeg-dev \
    zlib1g-dev \
    libpng-dev \
    libturbojpeg \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . /app/

# Upgrade pip and install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Expose the necessary port
EXPOSE 8080

# Run the bot
CMD ["python", "bot.py"]

