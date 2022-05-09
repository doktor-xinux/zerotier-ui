FROM tiangolo/uwsgi-nginx-flask:python3.9

COPY ./backend/requirements.txt /app/requirements.txt

COPY ./uwsgi.ini /app/uwsgi.ini
ENV UWSGI_INI /app/uwsgi.ini

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

ENV UWSGI_INI /application/uwsgi.ini

COPY ./backend /app
