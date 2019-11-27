
FROM golang

RUN apt-get update -y &&\
	apt-get upgrade -y &&\
	apt-get install git gcc wget -y &&\
	apt-get install libpam0g-dev -y

EXPOSE 3000

RUN adduser --disabled-login --gecos 'Gogs' git
USER git

WORKDIR /home/git
RUN mkdir -p local

RUN wget https://storage.googleapis.com/golang/go1.10.linux-amd64.tar.gz &&\
	tar -C /home/git/local -xzf go1.10.linux-amd64.tar.gz

ENV GOROOT=/home/git/local/go
ENV GOPATH=/home/git/go
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin

RUN mkdir -p $GOPATH/src/github.com/gogits &&\
	cd $GOPATH/src/github.com/gogits &&\
	git clone --depth=1 -b develop https://github.com/gogits/gogs &&\
	cd gogs &&\
	go build

WORKDIR $GOPATH/src/github.com/gogits/gogs
RUN go get -u -tags "sqlite pam cert" github.com/gogits/gogs &&\
	go build -tags "sqlite pam cert"

USER root

WORKDIR $GOPATH/src/github.com/gogits/gogs
ENTRYPOINT ["./gogs", "web"]