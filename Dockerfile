FROM ubuntu:14.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl git mercurial make binutils bison gcc build-essential golang

# Set GOPATH/GOROOT environment variables
RUN mkdir -p /go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH

# Set up app
RUN go get github.com/kyokomi/slack-webhock

# Removed unnecessary packages
RUN apt-get autoremove -y

# Clear package repository cache
RUN apt-get clean all

EXPOSE 3000
CMD ["slack-webhock"]

