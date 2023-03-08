FROM python:3.8-slim-buster
COPY requirements-app.txt ./
RUN pip install --no-cache-dir -r requirements-app.txt
COPY . .
EXPOSE 5000
CMD ["python3", "app.py"]