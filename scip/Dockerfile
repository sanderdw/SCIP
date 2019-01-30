FROM debian:latest
MAINTAINER Sander de Wildt <sanderdw@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential zlib1g-dev libgmp3-dev libreadline-dev lib32ncurses5-dev && apt-get clean
COPY scipoptsuite-6.0.1.tgz /
COPY markshare2.mps /
RUN tar xvf scipoptsuite-6.0.1.tgz
RUN cd scipoptsuite-6.0.1 && make install TPI=tny USRLDFLAGS=-lpthread