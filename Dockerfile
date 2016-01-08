FROM mpfefferle/grunt:latest

RUN apt-get update && apt-get install -y \
    libfontconfig1 libfontconfig1-dev \
    libfreetype6 libfreetype6-dev

RUN ["/node/bin/npm", "install", "-g", "mocha"]
RUN ["/node/bin/npm", "install", "-g", "grunt-mocha"]

