DOCKER_FILE=compose.yaml
APP_CONTAINER=app

build:
	docker compose -f ${DOCKER_FILE} build

up:
	docker compose -f ${DOCKER_FILE} up -d

down:
	docker compose -f ${DOCKER_FILE} down

exec:
	docker compose -f ${DOCKER_FILE} exec -it ${APP_CONTAINER} bash

dev:
	docker compose -f ${DOCKER_FILE} exec ${APP_CONTAINER} npm run dev

sb:
	docker compose -f ${DOCKER_FILE} exec ${APP_CONTAINER} npm run storybook