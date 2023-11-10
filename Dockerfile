FROM bitnami/python:3.11

LABEL maintainer="Adam Rich <adam.rich@ymeadows.com>"

# Installs depedency.
RUN pip install fastapi pyyaml

# Adds entrypoint file.
ADD entrypoint.py /entrypoint.py

# Runs entrypoint on docker run.
ENTRYPOINT python /entrypoint.py
