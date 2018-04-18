.PHONY: help clean build update-index publish all
.DEFAULT_GOAL := all

# Shell to use with Make
SHELL := /bin/bash

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## remove build files
	@rm -rf .catalog

build: ## build
	@git archive --remote=https://github.com/hypnosapos/cartpole-rl-remote.git master helm | tar xvf -
	@helm package helm/cartpole-rl-remote

update-index: ## generate index file of charts
	@mkdir .hypnosapos-charts
	@mv *.tgz .hypnosapos-charts/
	@gsutils -m rsync gs://hypnosapos-charts .hypnosapos-charts/
	@helm repo index .hypnosapos-charts --url https://hypnosapos-charts.storage.googleapis.com

publish:
	gsutils -m rsync .hypnosapos-charts gs://hypnosapos-charts

all: clean build update-index publish ## Update hypnosapos-charts repository