# use the base image of ubuntu
FROM ubuntu

# Author name
# MAINTAINER TAEHYEON, KIM <kim.taehyeon@a-s.com.co>

# add meta data
LABEL autor="TAEHYEON KIM"
LABEL email="kim.taehyeon@a-s.com.co"
LABEL version="0.1"
LABEL description="Test Dockerfile from a project that learns Django based on Docker"

# execute bash command
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip install django
RUN pip install pandas

# add host file to image / create folder when doesn't exist
ADD ./ /project/

# open port to host, not external
# EXPOSE 8000

# change directory
# WORDIR /project/

# execute bash command when container had ran
# ENTRYPOINT python3 /project/manage.py runserver 0.0.0.0:8000
