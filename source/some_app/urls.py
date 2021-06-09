#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.urls import path

from some_app import views

urlpatterns = [
    path('', views.index, name='index'),
]
