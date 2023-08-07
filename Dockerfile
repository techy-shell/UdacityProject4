FROM python:3.7.3-stretch

WORKDIR /devops

COPY project-ml-microservice-kubernetes /devops/

#Use the commented pip install to run with run_docker.txt & add to requirements.txt - scikit-learn==0.20.2
RUN #hadolint ignore=DL3013 &&\
    pip install --no-cache-dir --upgrade setuptools wheel --use-pep517 pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org numpy &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt



EXPOSE 80

CMD ["python", "app.py"]


