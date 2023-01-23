FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" TZ="US/Pacific" apt-get -y install tzdata && \
    apt-get install -y \
    curl

RUN curl https://norvig.com/big.txt

RUN echo "second time"

RUN curl https://norvig.com/big.txt