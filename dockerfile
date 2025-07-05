FROM python:3.13-slim

COPY webapp.py .
COPY templates .

RUN pip install flask

EXPOSE 5000

CMD ["python3", "webapp.py"]
