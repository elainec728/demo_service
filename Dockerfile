FROM python:3.6
USER root

ENV CONTAINER_HOME=/workspace/djangoProject \
    PROJECT=source \
    TZ=Asia/Shanghai \
    PYTHONUNBUFFERED=1 \
    PYTHONPATH="${PYTHONPATH}:/workspace/djangoProject" \
    DJANGO_SETTINGS_MODULE=source.demo_django.settings

EXPOSE 8000
#ADD sources.list /etc/apt/
RUN mkdir -p $CONTAINER_HOME

COPY ./source/requirements.txt $CONTAINER_HOME
RUN pip install --upgrade pip \
    && pip install  -r $CONTAINER_HOME/requirements.txt

COPY . $CONTAINER_HOME
WORKDIR $CONTAINER_HOME/source
#CMD ['tail','-f','/etc/hosts']
CMD ["sh","-c","sh $CONTAINER_HOME/main.sh $CONTAINER_HOME"]