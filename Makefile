install : start-recreate start-compose start-restore

start :  start-compose

stop :  stop-compose

start-recreate:
	git clone https://github.com/mra2309/fdt-s2.git

start-compose: 
	docker-compose up -d

stop-compose: 
	docker-compose down

start-restore:
	docker exec -i some-mysql sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < /fdt-s2l/all.sql