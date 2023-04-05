FROM python:2.7.12-slim

ENV PYTHONUNBUFFERED 1

# update apk and install git & nano
# Install pythen-dev
# Install mysql dependencies
# Install psycopg2 dependencies
# Install cryptography
# Install Geospatial libraries
# Install gettext
# Install mosquitto
RUN apt-get update && apt-get upgrade -y --force-yes && \
    apt-get install python-dev -y --force-yes && \
    apt-get install build-essential libmysqlclient-dev -y --force-yes && \
    apt-get install libpq-dev -y --force-yes && \
    apt-get install libssl-dev libffi-dev -y --force-yes && \
    apt-get install binutils libproj-dev gdal-bin -y --force-yes && \
#    apt-get install -y gettext && \
    apt-get install mosquitto -y --force-yes


# Install wkhtmltopdf with patched QT
RUN apt-get install wget -y --force-yes && \
    wget https://s3.amazonaws.com/shopify-managemant-app/wkhtmltopdf-0.9.9-static-amd64.tar.bz2 && \
    tar xvjf wkhtmltopdf-0.9.9-static-amd64.tar.bz2 && \
    mv wkhtmltopdf-amd64 /usr/local/bin/wkhtmltopdf && \
    chmod +x /usr/local/bin/wkhtmltopdf
#RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
#RUN tar xvf wkhtmltox*.tar.xz
#RUN mv wkhtmltox/bin/wkhtmlto* /usr/bin
#RUN apt-get install openssl libxrender-dev git-core libx11-dev libxext-dev libfontconfig1-dev libfreetype6-dev fontconfig -y
#RUN apt-get install wkhtmltopdf -y



WORKDIR /app

COPY requirements.txt .
COPY requirements/. ./requirements

RUN pip install --upgrade pip
#RUN pip install -U setuptools
RUN pip install setuptools-scm
RUN pip install -r requirements.txt

COPY . .