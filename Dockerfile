FROM golang:1.22.5 

WORKDIR /APP

COPY go.mod .

RUN go mod download

COPY . .

RUN go build -o main .

CMD [ "./main" ]