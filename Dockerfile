FROM python:3.6-alpine
LABEL maintainer="davidgg090@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./Pipfile /Pipfile
RUN pip install pipenv
RUN piven install

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

