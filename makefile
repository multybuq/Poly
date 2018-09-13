# setup pods
setup:
	@echo [installing cocoapods]
	@sudo /usr/bin/gem install -n /usr/local/bin cocoapods
	@pod setup

pods:
	@echo [updating pods]
	@echo ensure you have the latest cocoapods, run make setup
	@echo
	@-rm Podfile.lock
	@-rm -rf Pods
	@pod install

cleanpods:
	@echo [removing local Pods caches]
	@echo /Users/$$USER/.cocoapods/*
	@echo ensure to re-run make setup!
	@-rm -rf /Users/$$USER/.cocoapods/*

.PHONY: setup pods cleanpods
