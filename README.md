# phpipam

This is a repository containing configuration to deploy and configure
[phpipam](https://phpipam.net) in docker, using [docker-compose](https://docs.docker.com/compose/compose-file/), with a local MariaDB database.

## Prerequisites

You must expose these environment variables:

* `GMAPS_API_KEY`: a Google Maps API key

## Running Locally

Use `docker-compose`:

	docker-compose up

Now you can view phpipam at <http://localhost:8080/>.

The database image uses a persistent volume, so your data will stuck around as
you stop and start containers.

# Updating Vendored Code

Use this command to pull a version of `phpipam` (check its [GitHub releases](https://github.com/phpipam/phpipam/releases)):

    git subtree pull --squash --prefix vendor/phpipam https://github.com/phpipam/phpipam.git 1.4
