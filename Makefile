OUTPUT=./public
IMAGE=hugo:0.52

.PHONY: all
all: run

lint: docker/Dockerfile
	docker run --rm -i hadolint/hadolint hadolint - --format json < docker/Dockerfile

.PHONY: build
build:
	cp config.toml docker/config.toml
	docker build -t ${IMAGE} docker

run:
	docker run --rm -v $(PWD)/content:/src/content:ro -v $(PWD)/public:/output ${IMAGE}
