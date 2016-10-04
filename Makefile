DOCKER_IMAGE_NAME := steemitinc/steemit.com

default: test

test:
	npm test

dockerbuild:
	docker build -t $(DOCKER_IMAGE_NAME) .

dockerrun:
	docker run -p 8080:8080 $(DOCKER_IMAGE_NAME)
