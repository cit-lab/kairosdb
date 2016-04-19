# kairosdb
Kairosdb docker image

## Usage

- `docker build -t cit-lab/kairosdb .`
- `docker run -p 8080:8080 --name kairosdb -d cit-lab/kairosdb`

## Reference

- https://hub.docker.com/r/mbessler/archlinux-kairosdb/~/dockerfile/
- https://docs.docker.com/engine/examples/mongodb/

## TODO

- mount config file and storage folder (may need to clean pid file)