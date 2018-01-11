FROM alpine:3.7

RUN apk --no-cache add nodejs \
    && \
    npm install --save-dev -g --unsafe-perm=true chromedriver \
    nightwatch

RUN adduser -D -u 1000 nightwatch

USER nightwatch

WORKDIR /home/nightwatch

CMD ["nightwatch", "--help"]
