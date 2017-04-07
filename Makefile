PHONY: help init dev build clean

help:
# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## Install dependencies
	bundle install

clean: ## Wipe the _site directory
	@rm -rf _site

build: ## Build site
	bundle exec jekyll build

dev: ## Run jekyll in watch mode
	bundle exec jekyll serve
