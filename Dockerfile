FROM node:7.2.1

RUN groupadd --user-group --create-home --shell /bin/false app &&\
    npm install --global npm@4.0.5

ENV HOME=/home/app

USER app
WORKDIR $HOME/chat