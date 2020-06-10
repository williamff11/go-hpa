FROM golang:1.7.3
WORKDIR /go/src/github.com/alexellis/href-counter/
RUN go get -d -v golang.org/x/net/html
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" main.go

CMD ["./main"]

# FROM hello-world:latest
# WORKDIR /root/
# COPY --from=0 /go/src/github.com/alexellis/href-counter/main .