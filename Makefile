# Inspired by https://github.com/snakemake/snakefmt/blob/master/Makefile
PROJECT = grp_meeting_test
OS := $(shell uname -s)
VERSION := $(shell poetry version -s)
BOLD := $(shell tput bold)
NORMAL := $(shell tput sgr0)

.PHONY: all
all: install

.PHONY: install
install:
	poetry install

.PHONY: install-ci
install-ci:
	poetry install --no-interaction
	poetry run grp_meeting_test --help

.PHONY: pre-commit
pre-commit:
	poetry run pre-commit run --all-files -v

.PHONY: test
test:
	echo "TEST SUCCESS"

build:
	poetry build
