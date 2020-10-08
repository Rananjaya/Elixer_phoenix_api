defmodule VxfreedomApi.Repo do
  use Ecto.Repo,
    otp_app: :vxfreedom_api,
    adapter: Ecto.Adapters.Postgres
end
