FROM python:3.8
ENV PYTHONUNBUFFERED=1

RUN mkdir /code

WORKDIR /code

COPY Pipfile /code/
COPY Pipfile.lock /code/

RUN pip install pipenv && pipenv install --system

COPY . /code/


