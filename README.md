# Setup

`docker-compose build`

`docker-compose run --rm phoenix mix phx.new . --app ivan`

edit src/config/dev.exs

`docker-compose run --rm phoenix mix ecto.create`

`docker-compose run --rm phoenix mix ecto.migrate`

`docker-compose up -d`

`docker exec -it how-to-elixir-phoenix_phoenix_1 bash`

## Gerar crud automático

`docker-compose run --rm phoenix mix phx.gen.html Pokemons Pokemon pokemons name:string type:string`

`docker-compose run --rm phoenix mix ecto.migrate`

## Referências

[https://medium.com/swlh/use-docker-to-create-an-elixir-phoenix-development-environment-e1a81def1d2e](https://medium.com/swlh/use-docker-to-create-an-elixir-phoenix-development-environment-e1a81def1d2e)

[https://pamit.medium.com/building-a-restful-backend-with-elixir-phoenix-84fe390975c](https://pamit.medium.com/building-a-restful-backend-with-elixir-phoenix-84fe390975c)