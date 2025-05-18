FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-venv

COPY app.py /opt/app.py

RUN python3 -m venv /opt/venv
RUN source /opt/venv/bin/activate
RUN pip install Flask

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0