postgres:
	docker run --name postgresgobackendcourse -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -d postgres

createdb:
	docker exec -it postgresgobackendcourse createdb --username=root simple_bank

dropdb:
	docker exec -it postgresgobackendcourse dropdb --username=root simple_bank

init-db:
	migrate --path db/migration -database "postgresql://root:root@localhost:5432/simple_bank?sslmode=disable" -verbose up


open_postgres:


.PHONY: postgres createdb dropdb init-db
