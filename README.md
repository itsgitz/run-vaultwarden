# Run Vaultwarden
Just a simple linux bash script for create or run [Vaultwarden](https://github.com/dani-garcia/vaultwarden) server using docker container

# Prerequisite
* Docker Engine

# Usage
1. Make the script executable with `chmod` command:
```
$ chmod +x build.sh
```
3. Run the vaultwarden
```
$ make build
```
4. Open vaultwarden application on browser by accessing http://localhost:8000 (check  the`CONTAINER_PORT` variable on `run.sh` script file)
5. For stop or start the container
```
$ make stop # stop the container
$ make run # run or start the container
```

# Contributor
Anggit M Ginanjar
