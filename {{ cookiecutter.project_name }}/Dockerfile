FROM ubuntu:24.04

WORKDIR /work

RUN apt update -y \
    && apt install -y curl cmake python3 python3-dev python3-pip \
    && rm -rf /var/lib/apt/lists

COPY uv.lock ./
COPY pyproject.toml ./

RUN curl -LsSf https://astral.sh/uv/install.sh | sh \
    && /root/.local/bin/uv sync --no-install-project

COPY Makefile ./
COPY src/ src/
COPY tests/ tests/

CMD ["/bin/bash"]
