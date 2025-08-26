# Base Python image
FROM python:3.11-slim

# Environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the entire project
COPY . .

# Collect static files
RUN python manage.py collectstatic --noinput

# Expose Django/Gunicorn port
EXPOSE 8000

# Run Django with Gunicorn
CMD ["gunicorn", "hexaproject.wsgi:application", "--bind", "0.0.0.0:8000"]
