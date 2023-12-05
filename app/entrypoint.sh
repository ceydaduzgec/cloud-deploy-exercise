#!/bin/bash

cd /app
./manage.py makemigrations # this is dangerous, use mindfully
./manage.py migrate
./manage.py migrate --run-syncdb
./manage.py collectstatic --noinput
./manage.py runserver 0.0.0.0:8000