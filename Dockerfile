FROM alpine:3.7

RUN apk --no-cache add nodejs \
    && \
    npm install chromedriver \
    nightwatch

RUN adduser -D -u 1000 nightwatch

USER nightwatch

WORKDIR /home/nightwatch

CMD nightwatch --help
