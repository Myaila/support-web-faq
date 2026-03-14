CONTAINER=myaila-faq

ifeq ($(OS),Windows_NT)
	CMD_GITHUB_HOOKS=echo "Skipping chmod on Windows"
else
	CMD_GITHUB_HOOKS=chmod +x .github/hooks/*
endif

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Container Commands
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

build-first: build up

build: git-prepare kill
	docker compose $(DOCKER_COMPOSE_CMD) build --no-cache

up:
	docker compose $(DOCKER_COMPOSE_CMD) up --no-build -d

down:
	docker compose $(DOCKER_COMPOSE_CMD) down || true

kill: down
	docker compose $(DOCKER_COMPOSE_CMD) kill || true

tty:
	docker exec -it $(CONTAINER) sh

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Tools
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

git-prepare:
	git config --local core.hooksPath .github/hooks
	$(CMD_GITHUB_HOOKS)