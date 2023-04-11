FROM rockylinux:9.1

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD python3 app.py
