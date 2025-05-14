GITPACK_VERSION := $(shell git rev-list --full-history --all --abbrev-commit | head -1)

build:
	docker pull debian
	docker build -t gilles67/docker-freepki:latest -t gilles67/docker-freepki:$(GITPACK_VERSION) ./freepki

push: build
	docker push gilles67/docker-freepki:latest 
	docker push gilles67/docker-freepki:$(GITPACK_VERSION)

all: push
