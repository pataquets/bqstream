FROM golang

COPY . /go/src/app
WORKDIR /go/src/app

RUN \
  go get -v && \
  go build -v

ENTRYPOINT [ "./app" ]
