#!/usr/bin/env bash
container_home=$1

python $container_home/source/manage.py migrate --settings=source_django.settings
python $container_home/source/manage.py runserver