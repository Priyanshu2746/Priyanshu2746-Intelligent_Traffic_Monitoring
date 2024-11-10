# Use an official Python runtime as a parent image
FROM python:3.11-slim-buster

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Copy the current directory contents into the container
COPY . .

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ffmpeg libsm6 libxext6 libgl1-mesa-glx unzip && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir -r requirements.txt


# Expose the port Streamlit will run on
EXPOSE 8501

# Set the command to run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]