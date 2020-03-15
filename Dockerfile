FROM python:3.6-alpine
LABEL maintainer="davidgg090@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./Pipfile  /Pipfile
COPY ./Pipfile.lock /Pipfile.lock
RUN pip3 install pipenv
RUN pipenv install --system --deploy

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

