defmodule DebtTracker.Repo do
  use Ecto.Repo,
    otp_app: :debt_tracker,
    adapter: Ecto.Adapters.Postgres
end
