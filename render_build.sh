#!/usr/bin/env bash

# Step 1: Install dependencies
pip install -r requirements.txt

python manage.py makemigrations
python manage.py migrate

# Step 3: Collect static files (optional but good practice)
python manage.py collectstatic --noinput

# Step 4: Run Gunicorn server
gunicorn backend.wsgi:application
