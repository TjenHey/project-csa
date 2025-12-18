FROM nginx:alpine

COPY . /usr/share/nginx/html

# Install envsubst
RUN apk add --no-cache gettext

# Use a shell script to substitute environment variables and start nginx
CMD ["/bin/sh", "-c", "envsubst < /usr/share/nginx/html/config.js.template > /usr/share/nginx/html/config.js && nginx -g 'daemon off;'"]
