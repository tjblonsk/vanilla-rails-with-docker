.PHONY: build
test:
	scripts/docker/bin/test.sh
build:
	scripts/docker/bin/build.sh
push:
	scripts/docker/bin/push.sh
deploy:
	scripts/docker/bin/deploy.sh
