FROM ruby:2.4.0

RUN set -ex \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get -y install \
                  nodejs \
                  mysql-client \
                  vim-tiny \
                  --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD containers/dev/rails/resources/scripts /usr/src/scripts/


RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g yarn

ADD containers/dev/rails/resources/_pryrc /root/.pryrc

EXPOSE 3000
EXPOSE 8080

