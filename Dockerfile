FROM bitnami/python:3.11

LABEL maintainer="Adam Rich <adam.rich@ymeadows.com>"

# Virtualenv is preinstalled in the parent image, upgrade it to the latest to support the latest versions of other dependencies, e.g. platformfirs
RUN pip install virtualenv --upgrade

# Installs depedency.
RUN pip install fastapi pyyaml

# Adds entrypoint file.
ADD entrypoint.py /entrypoint.py

# Runs entrypoint on docker run.
ENTRYPOINT python /entrypoint.py
