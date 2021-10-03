#!/bin/bash

# wait for Postgres to start
sleep 5

python manage.py makemigrations --no-input

python manage.py migrate --no-input

python manage.py collectstatic --no-input

#python manage.py runserver 0.0.0.0:8000
exec gunicorn eigw.wsgi:application -b 0.0.0.0:8000 --reload