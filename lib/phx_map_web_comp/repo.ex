defmodule PhxMapWebComp.Repo do
  use Ecto.Repo,
    otp_app: :phx_map_web_comp,
    adapter: Ecto.Adapters.Postgres
end
