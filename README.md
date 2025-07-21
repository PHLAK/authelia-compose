Requirements
------------

  - [Docker](https://www.docker.com)
    - [Docker Compose](https://docs.docker.com/compose/)
  - [GNU Make](https://www.gnu.org/software/make/) (optional)

Installation
------------

  1. Clone the repository

         git clone git@github.com:PHLAK/authelia-compose.git

  2. Initialize the configuration and secrets files

          make init

  4. Set environment variables in `.env` and secret values in the `volumes/secrets/*` files

  5. Set service-specific environment variables by editing the files found in the `environment.d` directory (optional)

  6. Run `docker compose config` to validate and confirm your configuration

  7. Run `docker compose up -d` to start the containers

Updating
--------

  1. Fetch latest file changes from the repository

         git pull --ff-only

  2. If necessary, initialize new configuration files

         make config

  3. Pull new images and restart containers

         docker compose up -d --pull allways
