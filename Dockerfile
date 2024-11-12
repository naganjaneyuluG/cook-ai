# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app files
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define environment variables for .env
ENV FLASK_ENV=production

# Command to run the app
CMD ["python", "app.py"]
