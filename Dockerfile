FROM golang:1.23-alpine AS basego

WORKDIR /go/src

COPY . .

RUN go build -ldflags="-s -w" fullcycle.go

FROM scratch

COPY --from=basego /go/src/fullcycle .

CMD ["./fullcycle"]