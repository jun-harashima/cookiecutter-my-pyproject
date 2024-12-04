PROJECT_NAME := {{ cookiecutter.project_slug }}
IMAGE_NAME := $(PROJECT_NAME)-image
CONTAINER_NAME := $(PROJECT_NAME)-container
PWD := $(shell pwd)

.PHONY: docker-build docker-run pytest ruff-check ruff-fmt mypy

docker-build:
	docker build -t $(IMAGE_NAME) -f Dockerfile .

docker-run:
	docker run -it --rm -v $(PWD):/work --name $(CONTAINER_NAME) $(IMAGE_NAME)

pytest:
	uv run pytest tests

ruff-check:
	uvx ruff check

ruff-fmt:
	uvx ruff fmt

mypy:
	uvx mypy
