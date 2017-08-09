# alpine-nginx static

Nginx web server build on Alpine docker image

## Executing

    docker run --name "webserver" -v $(pwd)/www:/var/www rlesouef/alpine-nginx:static

## Building The Image (optional)

    docker build -t rlesouef/alpine-nginx:static .

