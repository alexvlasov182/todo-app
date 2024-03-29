build:
	docker-compose build todo-app

run:
	docker-compose up todo-app

test:
	go test -v ./...

migrate:
	migrate -path ./schema -database 'postgres://postgres:qwerty@172.18.0.1:5436/postgres?sslmode=disable' up

swag:
	swag init -g cmd/main.go