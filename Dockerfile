FROM alpine
RUN apk add --no-cache perl fortune
COPY cowsay /usr/local/bin/cowsay
COPY docker.cow /usr/local/share/cows/default.cow
CMD fortune|/usr/local/bin/cowsay
