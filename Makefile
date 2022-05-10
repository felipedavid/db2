network:
	docker network create db_class

create:
	mkdir -p ${HOME}/docker/db_class
	docker run --network db_class --name pgadmin_db_class -p 15432:80 -e PGADMIN_DEFAULT_EMAIL=admin@admin.com -e PGADMIN_DEFAULT_PASSWORD=pgadmin -d dpage/pgadmin4:latest
	docker run --name postgres_db_class --network db_class -v ${HOME}/docker/db_class/postgresql:/var/lib/postgresql -v ${HOME}/docker/db_class/postgresql_data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -p 5429:5432 -d postgres

delete:
	docker stop pgadmin_db_class postgres_db_class 
	docker rm pgadmin_db_class postgres_db_class

start:
	docker start pgadmin_db_class postgres_db_class 

stop: 
	docker stop pgadmin_db_class postgres_db_class 

.PHONY: network crate delete start stop
