PROJECT_NAME := {{ cookiecutter.project_slug }}
IMAGE_NAME := $(PROJECT_NAME)-image
CONTAINER_NAME := $(PROJECT_NAME)-container

PWD := $(shell pwd)

NOTEBOOK_PORT_HOST := 8888
NOTEBOOK_PORT_CONTAINER := 8888

STREAMLIT_PORT_HOST := 8501
STREAMLIT_PORT_CONTAINER := 8501

.PHONY: docker-build docker-run notebook pytest ruff-check ruff-fmt mypy

docker-build:
	docker build -t $(IMAGE_NAME) -f Dockerfile .

docker-run:
	docker run -it --rm -v $(PWD):/work -p $(NOTEBOOK_PORT_HOST):$(NOTEBOOK_PORT_CONTAINER) -p $(STREAMLIT_PORT_HOST):$(STREAMLIT_PORT_CONTAINER) --name $(CONTAINER_NAME) $(IMAGE_NAME)

notebook:
	uv run jupyter notebook --port $(NOTEBOOK_PORT_CONTAINER) --allow-root --ip 0.0.0.0

pytest:
	uv run pytest tests

ruff-check:
	uvx ruff check

ruff-fmt:
	uvx ruff fmt

mypy:
	uvx mypy
