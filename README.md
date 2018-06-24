# Setup

You need Ruby and Rails installed.

## Configure Docker for Postgres

1. Ensure you have Docker installed. [Linux instructions here.](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce)
2. Ensure you have docker-compose installed. [Linux instructions here.](https://docs.docker.com/compose/install/#install-compose)
3. From the root of this directory run `docker-compose build`.
4. Once complete run `docker-compose up` (NB: Running `docker-compose up --build` will combine these commands)
5. Run `rails db:create db:migrate`.
6. Run `rails s`.