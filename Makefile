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

docsify-check:
	@docker exec $(CONTAINER) sh -c "\
		docsify serve docs --port 4000 & \
		PID=\$$!; \
		sleep 2; \
		if kill -0 \$$PID 2>/dev/null; then \
			echo 'Docsify check passed.'; \
			kill \$$PID; \
		else \
			echo 'Docsify check failed.'; \
			exit 1; \
		fi \
	"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Tools
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

git-prepare:
	git config --local core.hooksPath .github/hooks
	$(CMD_GITHUB_HOOKS)