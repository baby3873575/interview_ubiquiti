
# .PHONY: clean
# clean:
# 	$(GRADLE) clean

# .PHONY: build
# build: clean
# 	$(GRADLE) build

.PHONY: clean
clean:
	$(GRADLE) clean

.PHONY: pgup
pgup:
	docker run --rm --name ui_postgres -e POSTGRES_USER=ui_test -e POSTGRES_PASSWORD=developpass -e POSTGRES_DB=ui_test -d postgres

.PHONY: killpg
killpg:
	docker stop ui_postgres

.PHONY: usertable
usertable:
	cat ./scripts/makeusertab.sql | docker exec -i ui_postgres psql -U ui_test -d ui_test



