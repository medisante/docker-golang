FROM golang:1

RUN go get github.com/golangci/golangci-lint/cmd/golangci-lint \
  && go get github.com/frapposelli/wwhrd
