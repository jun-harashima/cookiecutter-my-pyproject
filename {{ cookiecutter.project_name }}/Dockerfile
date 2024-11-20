FROM ubuntu:24.04

WORKDIR /work

RUN apt update -y \
    && apt install -y curl cmake python3 python3-dev python3-pip \
    && rm -rf /var/lib/apt/lists

RUN pip3 install -U pip \
    && pip3 install poetry

COPY pyproject.toml poetry.lock ./

RUN poetry install --no-root

COPY Makefile ./

CMD ["/bin/bash"]
