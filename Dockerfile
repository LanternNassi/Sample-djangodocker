FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /Django_test

WORKDIR /Django_test

ADD . /Django_test/

RUN pip install -r requirements.txt

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000

