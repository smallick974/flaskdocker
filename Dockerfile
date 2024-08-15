# syntax=docker/dockerfile:1

FROM python:3.11.9-slim

WORKDIR /FlaskDocker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py

CMD [ "gunicorn", "-b" , "0.0.0.0:5000", "app:app"]