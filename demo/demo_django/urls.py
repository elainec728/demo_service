#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('', include('some_app.urls')),
    path('admin/', admin.site.urls),
]