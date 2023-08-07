FROM python:3.8
LABEL maintainer="Udacity"

COPY . /app
WORKDIR /app
ENV PIP_NO_CACHE_DIR=1
RUN pip install -r requirements.txt

# command to run on container start
CMD [ "python", "app.py" ]
