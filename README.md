# Home Docker

This repository includes the `Dockerfile` and `docker-compose.yml` required to launch the home page application easily.

## Docker image structure

- `/frontend`: contains `southball/home-frontend`.
- `/backend`: contains `southball/home-backend`.
- `/files`: recommended path for putting your files.

## Files

- `.env.sample`: Copy this file to `.env` and modify.
- `docker-compose.yml`: You may need to modify this file to change the folder with files or the port.
- `static/*`: This is copied into the docker image. Change the files before building the image.

## Instructions

Modify the files in the Files section as needed. Then run

```shell script
docker-compose up -d
```

If you need to rebuild, you may run the following commands:

```shell script
docker-compose build --force-rm -no-cache
docker-compose up --force-recreate -d
```