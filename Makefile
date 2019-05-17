install:
	pip install markdown

.PHONY: build
build:
	/usr/local/bin/python -m markdown \
		-x markdown.extensions.toc python.md \
		-x markdown.extensions.fenced_code \
		-x codehilite \
		> build/index.html

.PHONY: deploy
deploy: build
	cd build && git add -A && git commit -m "updated" && git push
