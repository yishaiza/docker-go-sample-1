FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app

# Working with Go Modules and Docker
## Add this go mod download command to pull in any dependencies
RUN go mod download


RUN go build -o main .
CMD ["/app/main"]