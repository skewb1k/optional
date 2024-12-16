.DEFAULT_GOAL := all

.PHONY: all
all: fmt test

.PHONY: test
test:
	@echo "Running tests..."
	@go test -v ./...

.PHONY: coverage
coverage:
	@echo "Running tests with coverage..."
	@go test -coverprofile=coverage.out ./...
	@go tool cover -html=coverage.out


.PHONY: vet
vet:
	@echo "Running go vet..."
	@go vet ./...

.PHONY: fmt
fmt:
	@echo "Formatting code..."
	@go fmt ./...

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  all       - Clean, lint, test, and build"
	@echo "  test      - Run tests"
	@echo "  coverage  - Run tests with coverage report"
	@echo "  vet       - Run go vet"
	@echo "  fmt       - Format code"
	@echo "  help      - Show this help message"