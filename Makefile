create_containers:
	mkdir -p ${HOME}/docker/db_class
	sudo docker run --network db_class --name pgadmin_db_class -p 15432:80 -e PGADMIN_DEFAULT_EMAIL=admin@admin.com -e PGADMIN_DEFAULT_PASSWORD=pgadmin -d dpage/pgadmin4:latest
	sudo docker run --name postgres_db_class --network db_class -v ${HOME}/docker/db_class/postgresql:/var/lib/postgresql -v ${HOME}/docker/db_class/postgresql_data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres

remove_containers:
	sudo docker stop pgadmin_db_class postgres_db_class 
	sudo docker rm pgadmin_db_class postgres_db_class

start:
	sudo docker start pgadmin_db_class postgres_db_class 

stop: 
	sudo docker stop pgadmin_db_class postgres_db_class 

.PHONY: create_containers remove_containers
