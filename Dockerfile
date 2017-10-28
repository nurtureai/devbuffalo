FROM gobuffalo/buffalo:v0.9.5 as builder
MAINTAINER James <c00lways@gmail.com>

RUN apt-get update \
  &&  apt-get install -y ca-certificates wget net-tools\
  && update-ca-certificates


RUN cd $GOPATH/src/github.com/gobuffalo && rm -Rf buffalo && \
	git clone https://github.com/u007/buffalo.git && cd buffalo/buffalo && \
	go install

RUN mkdir -p $GOPATH/src/github.com/u007 && cd $GOPATH/src/github.com/u007 && \
	git clone https://github.com/u007/pop.git && cd pop/soda && \
	go install

RUN mkdir -p $GOPATH/src
COPY entry.sh /home/app/
RUN chmod a+x /home/app/entry.sh

RUN echo "GOPATH: $GOPATH" && echo go --version && buffalo version && echo "soda: `soda -v`"
WORKDIR $GOPATH/src
ENTRYPOINT ["/home/app/entry.sh"]

EXPOSE 3000

