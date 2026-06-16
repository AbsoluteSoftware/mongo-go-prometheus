.PHONY: all
all: lint test

.PHONY: lint
lint:
	go fmt ./...
	go vet ./...
	staticcheck ./...

.PHONY: test
test: go-test

.PHONY: go-test
go-test:
	go test --race ./...


.PHONY: update
update:
	go get -u ./...
	go mod tidy
