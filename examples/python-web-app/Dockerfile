FROM ubuntu:latest

WORKDIR /app

COPY requirements.txt /app/
COPY devops /app/

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

CMD python3 manage.py runserver 0.0.0.0:8000




