defmodule Ivan.Repo do
  use Ecto.Repo,
    otp_app: :ivan,
    adapter: Ecto.Adapters.Postgres
end
