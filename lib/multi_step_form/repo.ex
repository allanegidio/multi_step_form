defmodule MultiStepForm.Repo do
  use Ecto.Repo,
    otp_app: :multi_step_form,
    adapter: Ecto.Adapters.Postgres
end
