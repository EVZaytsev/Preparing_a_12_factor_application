FROM ubuntu:latest
FROM python:3
MAINTAINER Zaytsev Evgeniy 'etiloron@gmail.com'
RUN apt-get update -y && apt-get install -y build-essential
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY visit_schetchik.py visit_schetchik.py
EXPOSE 5000
RUN pip install -r requirements.txt
CMD ["python","visit_schetchik.py"]
