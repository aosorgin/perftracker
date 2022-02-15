init:
	docker-compose up -d

down:
	docker-compose down

reset:
	docker-compose down -v
	docker-compose up -d

db-init:
	docker-compose exec perftracker python3 ./manage.py migrate
	docker-compose exec perftracker python3 ./manage.py createsuperuser

pt:
	docker-compose exec perftracker bash

client:
	docker-compose exec test1 bash

run:
	docker-compose exec perftracker python3 ./manage.py runserver 0.0.0.0:8000
