#!make
# include .env
# export $(shell sed 's/=.*//' .env)
current_dir = $(shell pwd)

plan:
	docker run -it --rm -v $(current_dir)/sql:/flyway/sql flyway/flyway:10-alpine info

apply:
	docker run -it --rm -v $(current_dir)/sql:/flyway/sql flyway/flyway:10-alpine migrate

lint:
	docker run --rm -v $(current_dir)/sql:/sql sqlfluff/sqlfluff:2.1.3 lint ./

.PHONY: run stop apply-local lint
