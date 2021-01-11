defmodule GExchange.Repo do
  use Ecto.Repo,
    otp_app: :g_exchange,
    adapter: Ecto.Adapters.Postgres
end
