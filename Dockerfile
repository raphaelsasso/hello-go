FROM golang:alpine as builder

WORKDIR /go/src/app
COPY . .
RUN go build -o hello

FROM alpine
COPY --from=builder /go/src/app . 
CMD ["./hello"]
