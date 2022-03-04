FROM python:3.8.12-alpine3.15 as base
COPY requirements.txt ./requirements.txt
RUN apk update && apk add --no-cache musl-dev linux-headers g++ py-pip && pip install -r requirements.txt && rm -f requirements.txt
CMD ["python3"]