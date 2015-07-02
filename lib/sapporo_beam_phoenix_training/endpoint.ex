defmodule SapporoBeamPhoenixTraining.Endpoint do
  use Phoenix.Endpoint, otp_app: :sapporo_beam_phoenix_training

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phoenix.digest
  # when deploying your static files in production.
  plug Plug.Static,
    at: "/", from: :sapporo_beam_phoenix_training, gzip: false,
    only: ~w(css images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_sapporo_beam_phoenix_training_key",
    signing_salt: "L0evx/eN"

  plug :router, SapporoBeamPhoenixTraining.Router
end
