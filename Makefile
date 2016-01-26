install:
	pip install markdown

toc:
	/usr/local/bin/python -m markdown \
		-x markdown.extensions.toc python.md \
		-x markdown.extensions.fenced_code \
		> index.html
