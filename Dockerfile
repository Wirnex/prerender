FROM node:latest
EXPOSE 3000
RUN apt-get update -y && apt-get install -y \
    python2.7 python-pip \
    libfreetype6 libfontconfig
COPY ./ /usr/src/app
RUN cd /usr/src/app && npm install
CMD cd /usr/src/app ; node server.js
