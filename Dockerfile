FROM golang:1.10 AS build-env
ADD . /app
RUN go get -d ./... && \
    CGO_ENABLED=0 GOOS=linux go build -o main .
    
FROM gcr.io/distroless/base
WORKDIR /app/
COPY --from=build-env /app/main .
CMD ["./main"]