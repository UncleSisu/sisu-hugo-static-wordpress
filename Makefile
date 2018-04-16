default: run

run: start

# docker-compose build --no-cache && 
start:
	docker-compose up --build

stop:
	docker-compose down
