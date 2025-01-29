# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside the container
EXPOSE 8000

# Define environment variables
ENV BOT_TOKEN=your_token_here
ENV API_ID=your_api_id_here
ENV API_HASH=your_api_hash_here
ENV DATABASE_URI=your_mongo_uri_here
ENV DATABASE_NAME=your_db_name_here
ENV LOG_CHANNEL=your_log_channel_here
ENV ADMINS=your_admin_ids_here
ENV CHANNELS=your_channel_ids_here

# Run bot.py when the container launches
CMD ["python", "bot.py"]
