.PHONY: deploy-local
deploy-local:
	docker-compose -f docker-compose.yml --env-file .env.local up --build -d

.PHONY: build
build:
	mvn clean package -Dmaven.test.skip=true
