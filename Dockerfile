FROM python:3.8.12-alpine3.15 as base
RUN apk update && apk add py-pip
RUN python3 install -r requirements.txt
