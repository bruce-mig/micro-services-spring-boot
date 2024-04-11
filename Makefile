postgres:
	docker run --name school-postgres -p 5432:5432 -e POSTGRES_USER=username -e POSTGRES_PASSWORD=password -d postgres:16.2-alpine

schoolsdb:
	docker exec -it school-postgres createdb --username=username --owner=username schools

studentsdb:
	docker exec -it school-postgres createdb --username=username --owner=username students

dropdb:
	docker exec -it school-postgres dropdb simple_bank

.PHONY: createdb schoolsdb studentsdb dropdb