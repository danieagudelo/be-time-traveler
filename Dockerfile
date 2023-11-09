FROM python:alpine

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN apk update && apk upgrade
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "app/main.py"]