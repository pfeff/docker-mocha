NAME = mpfefferle/mocha
VERSION = latest

.PHONY: all build run

build:
	docker build -t $(NAME):$(VERSION) --rm .

run: build
	docker run --rm -it --entrypoint=/bin/bash \
		$(NAME):$(VERSION)
