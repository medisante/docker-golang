FROM golang:latest

RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN go get -u github.com/alecthomas/gometalinter && gometalinter --install
RUN go get -u github.com/golangci/golangci-lint/cmd/golangci-lint
RUN go get -u github.com/go-critic/go-critic/...
RUN go get -u github.com/frapposelli/wwhrd
