#!/bin/bash

cd /home/alexm/django_cicd
git pull origin master --rebase
source .venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic
sudo systemctl restart gunicorn
