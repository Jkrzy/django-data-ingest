FROM python:3.6.5

RUN apt-get update && apt-get install -y postgresql-client

COPY ./example_project/requirements.txt ./example_project/requirements.txt
COPY ./setup.py setup.py
COPY ./README.md README.md
COPY ./data_ingest ./data_ingest

RUN pip install -r ./example_project/requirements.txt

