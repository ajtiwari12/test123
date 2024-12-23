FROM python:3.11.5-slim

ENV PYTHONUNBUFFERED=1
# Set the working directory
WORKDIR /src

# Copy the srclication code
COPY . /src


# Set up a Python virtual environment
RUN python -m venv venv

# Activate the virtual environment and install the dependencies
RUN /bin/bash -c "source venv/bin/activate"
RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 8000


CMD ["python", "run.py"]