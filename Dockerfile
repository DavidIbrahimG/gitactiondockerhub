FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy all the files from the current directory to the container
COPY requirements.txt /app/requirements.txt
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt  

# Expose the port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]