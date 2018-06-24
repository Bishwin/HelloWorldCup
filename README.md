# Setup

You need Ruby and Rails installed.

## Configure Docker for Postgres

1. Ensure you have Docker installed. [Linux instructions here.](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce)
1. Ensure you have docker-compose installed. [Linux instructions here.](https://docs.docker.com/compose/install/#install-compose)
1. Navigate to the root of the app.
1. If you already have Postgres installed locally, prefix **all** of the following steps with `DB_PORT=5433`.
Your local postgres will be running on port 5432 and will clash with the docker image if we don't use a different port. 
1. From the root of this directory run `docker-compose up --build` or `DB_PORT=5433 docker-compose up --build`, as per above.
1. Open a new terminal window or tab.
1. Run `rails db:create db:migrate` or `DB_PORT=5433 rails db:create db:migrate`.
1. Run `rails s` or `DB_PORT=5433 rails s`.
1. Navigate to `/helloworld/` which is a simple GET request that returns a string:
    ```json
    "helloworld"
    ```
    This is just  to test everything works.
1. Tear down the server via `Ctrl+C`.
1. Seed the database with `rails db:seed` or `DB_PORT=5433 rails db:seed`.

You now have Postgres populated with the seed data running via docker.

## Run Postgres via Docker

1. Navigate to the root of the app.
1. If you have Postgres installing locally prefix **all** steps with `DB_PORT=5433`.
1. Run `docker-compose up` or `DB_PORT=5433 docker-compose up`.
1. Open new terminal window or tab.
1. Run `rails s` or `DB_PORT=5433 rails s`.


