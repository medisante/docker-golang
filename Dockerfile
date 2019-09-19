FROM golang:1

RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $GOPATH/bin \
  && go get -u github.com/frapposelli/wwhrd
