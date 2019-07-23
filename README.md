# phpipam

This is a repository containing configuration to deploy and configure
[phpipam](https://phpipam.net) in docker, using [docker-compose](https://docs.docker.com/compose/compose-file/), with a local MariaDB database.

## Prerequisites

You must expose these environment variables:

* `GMAPS_API_KEY`: a Google Maps API key
* `MYSQL_ROOT_PASSWORD`: a random password

## Running Locally

Use `docker-compose`:

	docker-compose up

Now you can view phpipam at <http://localhost:8080/>.

The database image uses a persistent volume, so your data will stuck around as
you stop and start containers.

# Updating Vendored Code

Use this command to pull a version of `phpipam` (check its [GitHub releases](https://github.com/phpipam/phpipam/releases)):

    git subtree pull --squash --prefix vendor/phpipam https://github.com/phpipam/phpipam.git 1.4

## a note on submodules

phpipam has various submodules - see `vendor/phpipam/.gitmodules`:

* php-saml
* PHPMailer
* captcha
* bootstrap-select
* GoogleAuthenticator
* qrcodejs

Since the phpipam code has been vendored into this repository with `git
subtree`, instead of `git submodule`, its own submodules haven't come along for
the ride. This should probably be fixed by using submodule instead. For now, if
you need the functionality from any of those modules, you can `git rm` the
empty directory and clone or subtree their code into it.
