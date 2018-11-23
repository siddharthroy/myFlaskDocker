FROM python:3.6.7-alpine

RUN pip install Flask
RUN apk update && apk add bash

COPY helloWorldApp.py .
#RUN export FLASK_APP=helloWorldApp.py

EXPOSE 5000

CMD export FLASK_APP=helloWorldApp.py && flask run --host=0.0.0.0
