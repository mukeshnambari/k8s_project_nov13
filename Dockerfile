# Use python 3.9 as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements.txt to the container
COPY ./requirements.txt /code/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the application files into the container
COPY ./main.py /code/main.py
COPY ./form.html /code/form.html

# Command to run the application with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
