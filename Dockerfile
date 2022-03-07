# builder image
FROM golang:alpine as builder
RUN mkdir /build
ADD *.go /build/
ADD go.mod /build/
ADD go.sum /build/
WORKDIR /build
RUN CGO_ENABLED=0 GOOS=linux go build -a -o hello-world .


# generate clean, final image for end users
FROM alpine:3.11.3
COPY --from=builder /build/hello-world .

# executable
ENTRYPOINT [ "./hello-world" ]
CMD [ "world" ]
