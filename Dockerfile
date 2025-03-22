# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /main

# Copy the requirements file and install dependencies
COPY require.txt .
RUN pip install --no-cache-dir -r require.txt

# Copy the application source code
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Define the command to run the application
CMD ["python", "main.py"]

