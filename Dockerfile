# Use an official Python runtime as a base image
FROM python:3.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the entire contents of the 'spk' directory into the container at /app
COPY ./Sistem Pendukung Keputusan Web /app

# Set the working directory to the 'spk' directory
WORKDIR /app/Sistem Pendukung Keputusan Web

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Go back to the parent directory
WORKDIR /app

# Make port 8050 available to the world outside this container
EXPOSE 8050

# Run the Dash app when the container launches
CMD ["python", "app.py"]