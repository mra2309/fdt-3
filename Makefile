install : start-create start-compose start-restore

reinstall : start-recreate start-compose start-restore

start :  start-compose

stop :  stop-compose

start-create:
	git clone https://github.com/mra2309/fdt-s2.git

start-recreate:
	rm -rf fdt-s2
	git clone https://github.com/mra2309/fdt-s2.git

start-compose: 
	docker-compose up -d

stop-compose: 
	docker-compose down

start-restore:
	docker exec -i db sh -c 'exec mysql -uroot -p"toor"' < fdt-s2/all.sql