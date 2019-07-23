FROM debian@sha256:903779f30a7ee46937bfb21406f125d5fdace4178074e1cc71c49039ebf7f48f AS base

RUN apt-get update

# TODO(cera) - remove vim
RUN apt-get install -y \
  apache2 \
  apt-utils \
  mariadb-client \
  vim \
  php-redis \
  php-pear \
  php7.3 \
  php7.3-curl \
  php7.3-gd \
  php7.3-gmp \
  php7.3-mbstring \
  php7.3-mysql \
  ruby2.5

# enable the apache2 rewrite module
RUN a2enmod rewrite

RUN touch /var/log/php.log
RUN chown www-data:www-data /var/log/php.log

# install wait-for-socket
RUN gem install wait-for-socket

FROM base AS final

COPY . /app
