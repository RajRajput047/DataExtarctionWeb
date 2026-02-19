#!/usr/bin/env bash
# Exit immediately if a command exits with a non-zero status.
set -o errexit

# Install your Python packages
pip install -r requirements.txt

# Gather all CSS/JS files into the staticfiles folder
python manage.py collectstatic --noinput

# Sync your Neon database with your Django models
python manage.py migratepip install -r requirements.txt
python manage.py collectstatic --noinput
python manage.py migrate
