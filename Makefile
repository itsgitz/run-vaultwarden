build:
	./build.sh
run:
	docker start vaultwarden-server
stop:
	docker stop vaultwarden-server
destroy:
	docker rm vaultwarden-server
