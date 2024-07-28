######
# FROM
FROM python
FROM ubuntu:18.04
FROM asami76/hadoop-pseudo:v1.0
FROM python@sha256:f6faf32734e0870d82ea890737958fe33ce9ddfed27b3b157576d2aadbab3322"
FROM mcr.microsoft.com/mssql/server:2019-latest
FROM private-registry.somecompany.com:5000/someimage
FROM scratch

######
# WORKDIR COPY ADD
WORKDIR /app
WORKDIR subdir

COPY hello.py /app/hello.py
COPY hello.py startuo.sh /app/
COPY *.py /app/
COPY ["name with spaces.py","/app"]

# .dockerignore like .gitignore (e.g. Dockerfile* *.pyc !important.pyc)

ADD <url> /app
ADD <tar archive> /app

######
# Shell
SHELL ["/bin/bash","-c"]
SHELL ["/user/local/bin/python","-c"]

######
# RUN
RUN <command> <arg1> <arg2>
RUN ["command", "arg1", "arg2"]
RUN echo "This is a line" > /tmp/file
RUN echo "this is another line" >> /tmp/file
RUN cat /tmp/file
RUN fund / -name "python*" | wc -l
RUN pip install flask numpy
RUN apt update && apt upgrade -y
RUN java -version
RUN apt install wget vim openssh-server -y

######
# metadata
# ENV
ENV <name> <value>
ENV SQL_SA_ACCOUNT "sa"
ENV SQL_USER= sa SQL_PASSWORD="P@ssw0rd"
ENV PATH $PATH:/app
ENV PATH="/user/local/hadoop/bin:${PATH}"
ENV EMPTY ""

######
# USER
# e.g
## FROM ubuntu:latest
## RUN groupadd hadoop && useradd -g hadoop hduser
## USER hduser
## RUN id

######
# Label
LABEL maintainer="Noureldein"
LABEL description="Spark 3 Container"
LABEL is_dev = "true"

######
# ENTRYPOINT
ENTRYPOINT [ "/bin/bash","-c" ]

######
# CMD
CMD ["<args for entrypoint>"]

######
# ARG
ARG <name>=<value>
ARG PYTHON_IMAGE_NAME=python
ARG PYTHON_IMAGE_TAG=3.8.17
ARG SQL_SA = sa
ARG SQL_PASSWORD = P@ssw0rd
FROM $PYTHON_IMAGE_NAME:$PYTHON_IMAGE_TAG
