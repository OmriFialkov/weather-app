FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY /static/css /app/static/css
COPY /static/images /app/static/images
COPY /templates/ /app/templates
COPY app.py /app/
EXPOSE 5000
CMD ["python", "app.py"]
