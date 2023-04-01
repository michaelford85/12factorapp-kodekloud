FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements --no-cache-dir

COPY . /app

CMD python app.py