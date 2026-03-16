FROM golang:1.24.13-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod tidy

COPY . .

RUN go test ./...
RUN go build -o main .

CMD ["./main"]