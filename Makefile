.PHONY: all
all:
	docker compose up -d website --build

.PHONY: serve
serve:
	docker compose exec website hugo server --bind=0.0.0.0

