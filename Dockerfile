FROM python:3.9-slim-bullseye

# Test if python works
RUN python --version

# Install dependencies for rasalit
RUN python -m pip install git+https://github.com/RasaHQ/rasalit

# Run a rasalit option for viz
RUN python -m rasalit nlu-cluster --port 8501

