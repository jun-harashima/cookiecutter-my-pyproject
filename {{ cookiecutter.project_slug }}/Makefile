export PWD=$(shell pwd)
export PROJECT_NAME={{ cookiecutter.project_slug }}
export IMAGE_NAME=$(PROJECT_NAME)-image
export CONTAINER_NAME=$(PROJECT_NAME)-container

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
