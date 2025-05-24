FROM python:3.13-slim

COPY . .
RUN pip install flask

EXPOSE 5000

CMD ["python3", "webapp.py"]
