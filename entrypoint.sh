#!/bin/sh

echo "Apply database migrations"
python manage.py migrate 

# execute entry point command
exec "$@"