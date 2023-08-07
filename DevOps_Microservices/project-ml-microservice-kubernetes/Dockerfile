FROM python:3.7.3-stretch

WORKDIR /devops

COPY . /devops/


RUN pip install --no-cache-dir --upgrade setuptools wheel --use-pep517 pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org numpy &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
# hadolint ignore=DL3013

EXPOSE 80

CMD ["python", "app.py"]


