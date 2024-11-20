PROJECT_NAME := {{ cookiecutter.project_slug }}
IMAGE_NAME := $(PROJECT_NAME)-image
CONTAINER_NAME := $(PROJECT_NAME)-container
PWD := $(shell pwd)

docker-build:
	docker build -t $(IMAGE_NAME) -f Dockerfile .

docker-run:
	docker run -it --rm -v $(PWD):/work --name $(CONTAINER_NAME) $(IMAGE_NAME)

pytest:
	env PYTHONPATH=. poetry run pytest

pysen-lint:
	poetry run pysen run lint

pysen-format:
	poetry run pysen run format
