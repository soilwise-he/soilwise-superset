FROM apache/superset:6.0.0

USER root

# Install authlib and flask-session into Superset's venv site-packages using system pip
RUN apt-get update && \
    apt-get install -y python3-pip && \
    /usr/bin/python3 -m pip install --target=/app/.venv/lib/python3.10/site-packages authlib flask-session && \
    curl https://bootstrap.pypa.io/get-pip.py | /app/.venv/bin/python3.10 && \
    /app/.venv/bin/python3.10 -m pip install psycopg2-binary

USER superset
