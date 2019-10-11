FROM golang:1.13

RUN curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b $(go env GOPATH)/bin v1.19.1 \
  && curl -sL 'https://github.com/sonatype-nexus-community/nancy/releases/download/v0.0.31/nancy-linux.amd64-v0.0.31' -o $GOPATH/bin/nancy \
  && chmod +x $GOPATH/bin/nancy \
  && go get github.com/frapposelli/wwhrd
