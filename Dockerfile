# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Expose the port your app will run on (e.g., Flask/Django default port)
EXPOSE 5000

# Set the command to run your Python application (Flask or Django)
# For Flask:
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

# Or for Django:
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
