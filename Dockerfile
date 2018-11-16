FROM golang:latest

RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $GOPATH/bin
RUN go get -u github.com/frapposelli/wwhrd
