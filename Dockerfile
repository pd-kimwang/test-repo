FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y \
    curl

RUN curl https://norvig.com/big.txt && sleep 1

RUN echo 'curl https://norvig.com/big.txt'