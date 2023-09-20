.PHONY: index package package-all update

index: 
	helm repo index . --url .

package:
ifndef name
	@echo "Please specify a chart name. E.g., make package name=hello-redis"
else
	helm package charts/${name} --destination packages
endif

package-all:
	@for dir in charts/*; do \
		[ -d "$$dir" ] && helm package $$dir --destination packages; \
	done

update:	package-all index