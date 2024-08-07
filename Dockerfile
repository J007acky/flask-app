FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt


COPY app.py /app/
COPY templates /app/templates/


EXPOSE 5000

CMD ["python3", "app.py"]
