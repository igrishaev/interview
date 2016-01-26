install:
	npm install -g doctoc

toc:
	doctoc .

tocnew:
	/usr/local/bin/python -m markdown -x markdown.extensions.toc python.md  -x markdown.extensions.fenced_code > test.html
