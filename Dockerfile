# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

# Base image
FROM debian:bullseye-slim

# Start off with the most updated image possible
RUN apt-get update && apt-get --yes dist-upgrade

# Install dependencies
RUN apt-get update && apt-get install --no-install-recommends --yes -V \
        lighttpd

# Activate access log
# https://github.com/moby/moby/issues/6880#issuecomment-344114520
RUN ln -s ../conf-available/10-accesslog.conf /etc/lighttpd/conf-enabled/
RUN mkfifo -m 600 /var/log/lighttpd/access.log
RUN chown www-data:www-data /var/log/lighttpd/access.log
CMD ["sh", "-c", "cat <> /var/log/lighttpd/access.log & lighttpd -D -f /etc/lighttpd/lighttpd.conf"]

# Interface to the outside world
EXPOSE 80
VOLUME /var/www/html/
