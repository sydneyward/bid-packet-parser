FROM python:3-alpine as build
COPY . .
RUN pip install -r requirements-dev.txt
RUN python3 pylint app --max-line-length --indent-string="  "
RUN python3 -m unittest discover 
