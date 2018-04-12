FROM golang

RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh 
RUN go get -u github.com/alecthomas/gometalinter && gometalinter --install
RUN go get -u github.com/frapposelli/wwhrd
