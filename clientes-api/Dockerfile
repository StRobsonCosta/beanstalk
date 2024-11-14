FROM python:3.12

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /home/ubuntu/tcc/

COPY . /home/ubuntu/tcc/

# Instala setuptools e wheel, que incluem distutils para Python 3.12
RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt

RUN sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \['*'\]/" setup/settings.py

RUN python manage.py migrate

RUN python manage.py loaddata clientes.json

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000