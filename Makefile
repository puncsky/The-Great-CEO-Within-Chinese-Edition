.PHONY: install
install:
	nvm use v10 && npm install gitbook-cli -g

.PHONY: dev
dev:
	gitbook serve

.PHONY: build
build:
	gitbook pdf ./ ./_book/the-great-ceo-within-chinese-edition.pdf
	gitbook epub ./ ./_book/the-great-ceo-within-chinese-edition.epub
	gitbook mobi ./ ./_book/the-great-ceo-within-chinese-edition.mobi
