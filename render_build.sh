#!/usr/bin/env bash
#!/usr/bin/env bash

pip install -r requirements.txt


python manage.py migrate
gunicorn backend.wsgi:application
