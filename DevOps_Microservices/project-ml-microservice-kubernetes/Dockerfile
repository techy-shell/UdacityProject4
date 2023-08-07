FROM python:3.7.3-stretch

WORKDIR /devops

COPY . /devops/

# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade setuptools wheel --use-pep517 pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org numpy &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]


