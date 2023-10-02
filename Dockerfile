FROM ubuntu:latest
FROM python:3
MAINTAINER Zaytsev Evgeniy 'etiloron@gmail.com'
RUN apt-get update -y && apt-get install -y build-essential
COPY . /app
WORKDIR /app 
COPY . /app
WORKDIR /app 
RUN pip install -r requirements.txt
ENTRYPOINT ['python']
CMD ['Visit_schetchik.py']
