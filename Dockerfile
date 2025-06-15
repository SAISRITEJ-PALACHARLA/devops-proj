# Stage 1: Build Go app
FROM golang:1.22.5 AS base

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .
RUN go build -o main .

# Stage 2: Slim runtime
FROM gcr.io/distroless/base

WORKDIR /

# Copy built binary
COPY --from=base /app/main .

# ✅ Copy static folder properly
COPY --from=base /app/static /static

EXPOSE 8080

CMD ["./main"]
