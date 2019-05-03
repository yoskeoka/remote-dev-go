BIN_NAME=bin/server

.PHONY:
start:
	reflex -g '**/*.go' -s -- sh -c "make build && ./$(BIN_NAME)"

build:
	go build -o $(BIN_NAME) server.go
