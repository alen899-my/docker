FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app
ENV FLASK_RUN_HOST=0.0.0.0
COPY . .
RUN pip install -r requirnments.txt
EXPOSE 5000
CMD ["flask","run"]
