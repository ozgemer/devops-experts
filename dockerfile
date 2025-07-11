FROM python:3.13-slim

COPY webapp.py .
ADD data /data
ADD templates /templates

RUN pip install flask

EXPOSE 5000

CMD ["python3", "webapp.py"]
