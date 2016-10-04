default: test

test:
	npm test

dockerbuild:
	docker build -t steemitinc/steemit.com .
