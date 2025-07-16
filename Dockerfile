FROM python:3.8-slim-buster
WORKDIR /app
COPY python_project/requirements.txt /app/requirements.txt
COPY python_project/app.py /app/app.py
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]