defmodule MarleySpoon.Repo do
  use Ecto.Repo,
    otp_app: :marley_spoon,
    adapter: Ecto.Adapters.Postgres
end
