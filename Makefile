build:
	docker-compose build

up:
	docker-compose up -d

up-non-daemon:
	docker-compose up

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose stop && docker-compose start

shell-nginx:
	docker exec -ti django-nginx /bin/sh

shell-web:
	docker exec -ti django-web /bin/sh

shell-db:
	docker exec -ti django-postgres /bin/sh

log-nginx:
	docker-compose logs nginx  

log-web:
	docker-compose logs web  

log-db:
	docker-compose logs db

collectstatic:
	docker exec django-web /bin/sh -c "python manage.py collectstatic --noinput"  