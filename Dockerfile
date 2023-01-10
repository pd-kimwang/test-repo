FROM ubuntu:20.04

ARG USER_ID=1000
ARG GROUP_ID=1000

# Install tzdata before cmake to remove prompt
RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" TZ="US/Pacific" apt-get -y install tzdata && \
    apt-get install -y \
    curl

RUN apt-get update && \
    build-essential \
    clang-8 \
    libcurl4-openssl-dev \
    nano \
    python \
    python3.8 \
    python-setuptools \
    python3-distutils && \
    curl https://bootstrap.pypa.io/pip/get-pip.py | python3

RUN python3 -m pip install --upgrade pip==22.3