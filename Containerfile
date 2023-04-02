FROM python:3.7-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip

RUN pip3 install -r requirements.txt

COPY . /app

ENV FLASK_APP app.py

EXPOSE 5000

CMD [ “python3”, “-m” , “flask”, “run”, “ — host=0.0.0.0”]