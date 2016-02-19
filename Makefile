.PHONY: all
all: ci

.PHONY:
get-deps:
	go get github.com/golang/lint/golint

.PHONY: test
test:
	go test -cover ./...

.PHONY: fmt
fmt:
	go fmt ./...

.PHONY: vet
vet:
	go vet ./...

.PHONY: lint
lint:
	golint ./...

.PHONY: ci
ci: fmt vet lint test
