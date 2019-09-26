FROM golang:1

RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $GOPATH/bin \
  && curl -sL 'https://github.com/sonatype-nexus-community/nancy/releases/download/v0.0.24/nancy-linux.amd64-v0.0.24' -o $GOPATH/bin/nancy \
  && chmod +x $GOPATH/bin/nancy \
  && go get github.com/frapposelli/wwhrd
