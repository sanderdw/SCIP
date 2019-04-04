FROM debian:latest
MAINTAINER Sander de Wildt <sanderdw@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libblas3 libgmp10 libgsl2 liblapack3 && apt-get clean
COPY SCIPOptSuite-6.0.1-Linux.deb /
COPY markshare2.mps /
RUN dpkg -i SCIPOptSuite-6.0.1-Linux.deb