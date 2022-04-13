.DEFAULT_GOAL := test_local

GALAXY_NAME := $(shell echo $$(basename $$PWD) | sed 's/ansible_/tetov./')

test_local:
	ansible-playbook -vK test_local.yml

install:
	ln -s $$PWD $$HOME/.ansible/roles/$(GALAXY_NAME)

.PHONY := test_local install 
