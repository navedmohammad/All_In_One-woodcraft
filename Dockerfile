FROM python:3.9.7-slim-buster

WORKDIR .
COPY . .

RUN pip3 install -r requirements.txt

CMD gunicorn app:app & python3 main.py
