# Use the official Python 3.8 slim image as the base image
FROM python:3.8-slim

# Set the working directory within the container
WORKDIR /api-flask

# Copy the necessary files and directories into the container
COPY . /api-flask

# Upgrade pip and install Python dependencies
RUN pip3 install --upgrade pip && pip3 install --no-cache-dir -r requirements.txt

# Expose port 6000 for the Flask application
EXPOSE 6000

ENV FLASK_APP=application.py

# Define the command to run the Flask application using Gunicorn
CMD python ./application.py
